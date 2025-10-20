import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/isar_service.dart';
import '../models/venta.dart';
import '../models/detalle_venta.dart';
import '../models/producto.dart';

class VentasPage extends StatefulWidget {
  const VentasPage({super.key});
  @override
  State<VentasPage> createState() => _VentasPageState();
}

class _VentasPageState extends State<VentasPage> {
  late IsarService isar;
  List<Map<String, dynamic>> ventasDetalladas = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isar = Provider.of<IsarService>(context);
    load();
  }

  Future<void> load() async {
    final list = await isar.getVentasConDetalles();
    setState(() { ventasDetalladas = list; });
  }

  Future<void> createDemoSale() async {
    _showCreateVentaDialog();
  }

  void _showCreateVentaDialog() {
    showDialog(
      context: context,
      builder: (context) => CreateVentaDialog(
        onVentaCreated: () {
          load();
          Navigator.pop(context);
        },
        isarService: isar,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ventas'), actions: [IconButton(onPressed: createDemoSale, icon: const Icon(Icons.add), tooltip: 'Nueva Venta')]),
      body: ventasDetalladas.isEmpty 
        ? const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.receipt_outlined, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text('No hay ventas registradas', style: TextStyle(fontSize: 18, color: Colors.grey)),
                SizedBox(height: 8),
                Text('Presiona + para crear una nueva venta', style: TextStyle(color: Colors.grey)),
              ],
            ),
          )
        : ListView.builder(
            itemCount: ventasDetalladas.length,
            itemBuilder: (context, index) {
              final ventaData = ventasDetalladas[index];
              final venta = ventaData['venta'] as Venta;
              final detalles = ventaData['detalles'] as List<Map<String, dynamic>>;
              
              // Obtener nombres de productos
              final productosNombres = detalles.map((det) {
                final producto = det['producto'] as Producto?;
                return producto?.prodNombre ?? 'Producto desconocido';
              }).join(', ');
              
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.point_of_sale, color: Colors.white),
                  ),
                  title: Text('Venta #${venta.ventaId}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Productos: $productosNombres'),
                      Text('Fecha: ${venta.ventaFecha?.day}/${venta.ventaFecha?.month}/${venta.ventaFecha?.year}'),
                    ],
                  ),
                  isThreeLine: true,
                  trailing: Text(
                    '\$${venta.ventaTotal?.toStringAsFixed(2) ?? '0.00'}',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ),
              );
            },
          ),
    );
  }
}

class CreateVentaDialog extends StatefulWidget {
  final VoidCallback onVentaCreated;
  final IsarService isarService;

  const CreateVentaDialog({
    super.key,
    required this.onVentaCreated,
    required this.isarService,
  });

  @override
  State<CreateVentaDialog> createState() => _CreateVentaDialogState();
}

class _CreateVentaDialogState extends State<CreateVentaDialog> {
  List<Producto> productos = [];
  Producto? selectedProducto;
  final cantidadController = TextEditingController(text: '1');
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadProductos();
  }

  Future<void> loadProductos() async {
    final productList = await widget.isarService.getProductosWithStock();
    setState(() {
      productos = productList;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Nueva Venta'),
      content: isLoading
        ? const SizedBox(
            height: 100,
            child: Center(child: CircularProgressIndicator()),
          )
        : SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<Producto>(
                  decoration: const InputDecoration(
                    labelText: 'Seleccionar Producto',
                    border: OutlineInputBorder(),
                  ),
                  initialValue: selectedProducto,
                  items: productos.map((producto) {
                    return DropdownMenuItem(
                      value: producto,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(producto.prodNombre ?? 'Sin nombre', style: const TextStyle(fontWeight: FontWeight.bold)),
                          Text('Stock: ${producto.prodStockGlobal} | \$${producto.prodPrecioVenta?.toStringAsFixed(2)}',
                               style: const TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (producto) {
                    setState(() {
                      selectedProducto = producto;
                    });
                  },
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: cantidadController,
                  decoration: const InputDecoration(
                    labelText: 'Cantidad',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                if (selectedProducto != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Producto: ${selectedProducto!.prodNombre}'),
                          Text('Precio unitario: \$${selectedProducto!.prodPrecioVenta?.toStringAsFixed(2)}'),
                          Text('Subtotal: \$${_calculateSubtotal().toStringAsFixed(2)}'),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: selectedProducto != null ? _createVenta : null,
          child: const Text('Crear Venta'),
        ),
      ],
    );
  }

  double _calculateSubtotal() {
    if (selectedProducto == null) return 0.0;
    final cantidad = int.tryParse(cantidadController.text) ?? 1;
    return (selectedProducto!.prodPrecioVenta ?? 0.0) * cantidad;
  }

  Future<void> _createVenta() async {
    if (selectedProducto == null) return;

    final cantidad = int.tryParse(cantidadController.text) ?? 1;
    final precioUnit = selectedProducto!.prodPrecioVenta ?? 0.0;
    final subtotal = precioUnit * cantidad;

    final venta = Venta()
      ..ventaId = DateTime.now().millisecondsSinceEpoch
      ..tiendaId = 1
      ..usuResponsable = 1
      ..ventaFecha = DateTime.now()
      ..ventaTotal = subtotal;

    final detalle = DetalleVenta()
      ..detVentaId = DateTime.now().millisecondsSinceEpoch
      ..prodId = selectedProducto!.prodId
      ..cantidad = cantidad
      ..precioUnit = precioUnit
      ..subtotal = subtotal;

    await widget.isarService.createVentaWithDetails(venta, [detalle]);
    widget.onVentaCreated();
  }
}

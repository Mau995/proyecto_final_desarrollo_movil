import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/isar_service.dart';
import '../models/compra.dart';
import '../models/detalle_compra.dart';
import '../models/producto.dart';

class ComprasPage extends StatefulWidget {
  const ComprasPage({super.key});
  @override
  State<ComprasPage> createState() => _ComprasPageState();
}

class _ComprasPageState extends State<ComprasPage> {
  late IsarService isar;
  List<Map<String, dynamic>> comprasDetalladas = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isar = Provider.of<IsarService>(context);
    load();
  }

  Future<void> load() async {
    final list = await isar.getComprasConDetalles();
    setState(() { comprasDetalladas = list; });
  }

  Future<void> createDemoCompra() async {
    _showCreateCompraDialog();
  }

  void _showCreateCompraDialog() {
    showDialog(
      context: context,
      builder: (context) => CreateCompraDialog(
        onCompraCreated: () {
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
      appBar: AppBar(title: const Text('Compras'), actions: [IconButton(onPressed: createDemoCompra, icon: const Icon(Icons.add), tooltip: 'Nueva Compra')]),
      body: comprasDetalladas.isEmpty 
        ? const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart_outlined, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text('No hay compras registradas', style: TextStyle(fontSize: 18, color: Colors.grey)),
                SizedBox(height: 8),
                Text('Presiona + para crear una nueva compra', style: TextStyle(color: Colors.grey)),
              ],
            ),
          )
        : ListView.builder(
            itemCount: comprasDetalladas.length,
            itemBuilder: (context, index) {
              final compraData = comprasDetalladas[index];
              final compra = compraData['compra'] as Compra;
              final detalles = compraData['detalles'] as List<Map<String, dynamic>>;
              
              // Obtener nombres de productos
              final productosNombres = detalles.map((det) {
                final producto = det['producto'] as Producto?;
                return producto?.prodNombre ?? 'Producto desconocido';
              }).join(', ');
              
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                  title: Text('Compra #${compra.compraId}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Productos: $productosNombres'),
                      Text('Fecha: ${compra.compraFecha?.day}/${compra.compraFecha?.month}/${compra.compraFecha?.year}'),
                    ],
                  ),
                  isThreeLine: true,
                  trailing: Text(
                    '\$${compra.compraTotal?.toStringAsFixed(2) ?? '0.00'}',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
              );
            },
          ),
    );
  }
}

class CreateCompraDialog extends StatefulWidget {
  final VoidCallback onCompraCreated;
  final IsarService isarService;

  const CreateCompraDialog({
    super.key,
    required this.onCompraCreated,
    required this.isarService,
  });

  @override
  State<CreateCompraDialog> createState() => _CreateCompraDialogState();
}

class _CreateCompraDialogState extends State<CreateCompraDialog> {
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
    final productList = await widget.isarService.getAllProductos();
    setState(() {
      productos = productList;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Nueva Compra'),
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
                          Text('Precio compra: \$${producto.prodPrecioCompra?.toStringAsFixed(2)} | Stock: ${producto.prodStockGlobal}',
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
                          Text('Precio compra: \$${selectedProducto!.prodPrecioCompra?.toStringAsFixed(2)}'),
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
          onPressed: selectedProducto != null ? _createCompra : null,
          child: const Text('Crear Compra'),
        ),
      ],
    );
  }

  double _calculateSubtotal() {
    if (selectedProducto == null) return 0.0;
    final cantidad = int.tryParse(cantidadController.text) ?? 1;
    return (selectedProducto!.prodPrecioCompra ?? 0.0) * cantidad;
  }

  Future<void> _createCompra() async {
    if (selectedProducto == null) return;

    final cantidad = int.tryParse(cantidadController.text) ?? 1;
    final precioUnit = selectedProducto!.prodPrecioCompra ?? 0.0;
    final subtotal = precioUnit * cantidad;

    final compra = Compra()
      ..compraId = DateTime.now().millisecondsSinceEpoch
      ..almacenId = 1
      ..provId = 1
      ..usuResponsable = 1
      ..compraFecha = DateTime.now()
      ..compraTotal = subtotal;

    final detalle = DetalleCompra()
      ..detCompraId = DateTime.now().millisecondsSinceEpoch
      ..prodId = selectedProducto!.prodId
      ..cantidad = cantidad
      ..precioUnit = precioUnit
      ..subtotal = subtotal;

    await widget.isarService.createCompraWithDetails(compra, [detalle]);
    widget.onCompraCreated();
  }
}

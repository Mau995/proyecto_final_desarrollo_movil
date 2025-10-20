import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/isar_service.dart';
import '../models/producto.dart';
import '../models/inventario_tienda.dart';

class InventarioPage extends StatefulWidget {
  const InventarioPage({super.key});
  @override
  State<InventarioPage> createState() => _InventarioPageState();
}

class _InventarioPageState extends State<InventarioPage> {
  late IsarService isar;
  List<Producto> productos = [];
  List<InventarioTienda> inventarioTienda = [];
  bool isLoading = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isar = Provider.of<IsarService>(context);
    load();
  }

  Future<void> load() async {
    setState(() { isLoading = true; });
    final productList = await isar.getAllProductos();
    final inventoryList = await isar.getInventarioTienda();
    setState(() { 
      productos = productList; 
      inventarioTienda = inventoryList;
      isLoading = false;
    });
  }

  int getStockTienda(int prodId) {
    final inventory = inventarioTienda.where((inv) => inv.prodId == prodId).firstOrNull;
    return inventory?.invTStock ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Inventario'),
        actions: [
          IconButton(
            onPressed: load, 
            icon: const Icon(Icons.refresh),
            tooltip: 'Actualizar',
          ),
        ],
      ),
      body: isLoading 
        ? const Center(child: CircularProgressIndicator())
        : productos.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.inventory_2_outlined, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('No hay productos disponibles', style: TextStyle(fontSize: 18, color: Colors.grey)),
                  SizedBox(height: 8),
                  Text('Reinicia la aplicación para cargar productos por defecto', 
                       style: TextStyle(color: Colors.grey)),
                ],
              ),
            )
          : ListView.builder(
              itemCount: productos.length,
              itemBuilder: (context, index) {
                final producto = productos[index];
                final stockTienda = getStockTienda(producto.prodId);
                final stockGlobal = producto.prodStockGlobal ?? 0;
                final precioVenta = producto.prodPrecioVenta ?? 0.0;
                final unidad = producto.prodUnidadMedida ?? 'Unidad';
                
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: stockTienda > (producto.prodMinimoStock ?? 0) 
                        ? Colors.green 
                        : Colors.orange,
                      child: Text(
                        stockTienda.toString(),
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    title: Text(
                      producto.prodNombre ?? 'Sin nombre',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Precio: \$${precioVenta.toStringAsFixed(2)} / $unidad'),
                        Text('Stock Tienda: $stockTienda | Stock Global: $stockGlobal'),
                        if (stockTienda <= (producto.prodMinimoStock ?? 0))
                          const Text(
                            '⚠️ Stock bajo - Requiere reposición',
                            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                          ),
                      ],
                    ),
                    trailing: PopupMenuButton<String>(
                      onSelected: (value) {
                        if (value == 'ajustar') {
                          _showAdjustStockDialog(producto, stockTienda);
                        }
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 'ajustar',
                          child: Row(
                            children: [
                              Icon(Icons.edit),
                              SizedBox(width: 8),
                              Text('Ajustar Stock'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }

  void _showAdjustStockDialog(Producto producto, int currentStock) {
    final controller = TextEditingController(text: currentStock.toString());
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Ajustar Stock - ${producto.prodNombre}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Stock actual: $currentStock ${producto.prodUnidadMedida}'),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Nuevo stock',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () async {
              final newStock = int.tryParse(controller.text) ?? currentStock;
              await _updateStock(producto.prodId, newStock);
              Navigator.pop(context);
              load();
            },
            child: const Text('Actualizar'),
          ),
        ],
      ),
    );
  }

  Future<void> _updateStock(int prodId, int newStock) async {
    await isar.updateInventarioTienda(prodId, newStock);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Stock actualizado correctamente')),
    );
  }
}
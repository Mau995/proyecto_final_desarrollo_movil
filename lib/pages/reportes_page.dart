import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/isar_service.dart';
import '../utils/csv_export.dart';
import '../models/venta.dart';
import '../models/producto.dart';

class ReportesPage extends StatefulWidget {
  const ReportesPage({super.key});
  @override
  State<ReportesPage> createState() => _ReportesPageState();
}

class _ReportesPageState extends State<ReportesPage> {
  late IsarService isar;
  List<Map<String, dynamic>> ventasDetalladas = [];
  double ventaGlobal = 0.0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isar = Provider.of<IsarService>(context);
    load();
  }

  Future<void> load() async {
    final ventasCompletas = await isar.getVentasConDetalles();
    final total = await isar.ventaGlobalDelDia(DateTime.now());
    
    // Filtrar ventas de los últimos 7 días
    final ahora = DateTime.now();
    final hace7Dias = ahora.subtract(const Duration(days: 7));
    final ventasFiltradas = ventasCompletas.where((ventaData) {
      final venta = ventaData['venta'] as Venta;
      final fecha = venta.ventaFecha;
      return fecha != null && fecha.isAfter(hace7Dias) && fecha.isBefore(ahora);
    }).toList();
    
    setState(() { 
      ventasDetalladas = ventasFiltradas; 
      ventaGlobal = total; 
    });
  }

  Future<void> exportCsv() async {
    final ventasParaCsv = ventasDetalladas.map((ventaData) => ventaData['venta'] as Venta).toList();
    final csv = await CsvExport.ventasToCsv(ventasParaCsv);
    await CsvExport.saveAndShareCsv('ventas_export.csv', csv);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reportes'), actions: [IconButton(onPressed: exportCsv, icon: const Icon(Icons.share))]),
      body: ListView(children: [
        Card(
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Icon(Icons.analytics, size: 48, color: Colors.blue),
                const SizedBox(height: 8),
                Text(
                  'Venta Global del Día',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  '\$${ventaGlobal.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Ventas de los últimos 7 días:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        const Divider(),
        ...ventasDetalladas.map((ventaData) {
          final venta = ventaData['venta'] as Venta;
          final detalles = ventaData['detalles'] as List<Map<String, dynamic>>;
          
          final productosNombres = detalles.map((det) {
            final producto = det['producto'] as Producto?;
            return producto?.prodNombre ?? 'Producto desconocido';
          }).join(', ');
          
          return ListTile(
            leading: const Icon(Icons.receipt, color: Colors.green),
            title: Text('Venta #${venta.ventaId}'),
            subtitle: Text('Productos: $productosNombres'),
            trailing: Text(
              '\$${venta.ventaTotal?.toStringAsFixed(2) ?? '0.00'}',
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
          );
        }).toList(),
        if (ventasDetalladas.isEmpty)
          const Center(
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                'No hay ventas en los últimos 7 días',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
      ]),
    );
  }
}

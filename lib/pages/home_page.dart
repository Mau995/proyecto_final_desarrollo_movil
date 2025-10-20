import 'package:flutter/material.dart';
import 'ventas_page.dart';
import 'compras_page.dart';
import 'transferencias_page.dart';
import 'reportes_page.dart';
import 'inventario_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Decor Offline')),
      drawer: Drawer(child: ListView(children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.tealAccent],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.store, size: 40, color: Colors.white),
              SizedBox(height: 8),
              Text('Decor Offline', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Sistema de Gestión', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.inventory),
          title: const Text('Inventario'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const InventarioPage())),
        ),
        ListTile(
          leading: const Icon(Icons.point_of_sale),
          title: const Text('Ventas'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const VentasPage())),
        ),
        ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: const Text('Compras'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ComprasPage())),
        ),
        ListTile(
          leading: const Icon(Icons.swap_horiz),
          title: const Text('Transferencias'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TransferenciasPage())),
        ),
        ListTile(
          leading: const Icon(Icons.analytics),
          title: const Text('Reportes'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ReportesPage())),
        ),
      ])),
      body: const Center(child: Text('Bienvenido')),
    );
  }
}

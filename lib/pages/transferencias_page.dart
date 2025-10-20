import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/isar_service.dart';
import '../models/transferencia.dart';
import '../models/detalle_transferencia.dart';

class TransferenciasPage extends StatefulWidget {
  const TransferenciasPage({super.key});
  @override
  State<TransferenciasPage> createState() => _TransferenciasPageState();
}

class _TransferenciasPageState extends State<TransferenciasPage> {
  late IsarService isar;
  List<Transferencia> transfs = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isar = Provider.of<IsarService>(context);
    load();
  }

  Future<void> load() async {
    final list = await isar.transferenciasFiltradas();
    setState(() { transfs = list; });
  }

  Future<void> createDemoTransf() async {
    final t = Transferencia()..transfId = DateTime.now().millisecondsSinceEpoch..origenTipo = 'almacen'..origenId = 1..destinoTipo = 'tienda'..destinoId = 1..usuResponsable = 1..transfFecha = DateTime.now()..transfEstado = 'completada';
    final d = DetalleTransferencia()..detTransfId = DateTime.now().millisecondsSinceEpoch..prodId = 1..cantidad = 2;
    await isar.createTransferencia(t, [d]);
    await load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transferencias'), actions: [IconButton(onPressed: createDemoTransf, icon: const Icon(Icons.add))]),
      body: ListView(children: transfs.map((t) => ListTile(title: Text('Transf ${t.transfId} - Estado: ${t.transfEstado}'))).toList()),
    );
  }
}

import 'package:isar/isar.dart';
import 'supabase_service.dart';
import 'isar_service.dart';
import '../models/venta.dart';

class SyncService {
  final IsarService isar = IsarService();
  final SupabaseService supa = SupabaseService();

  Future<void> pushVentas() async {
    final db = await isar.db;
    final pendientes = await db.ventas.filter().estadoEqualTo(1).findAll();
    for (final v in pendientes) {
      try {
        await supa.client.from('venta').insert({
          'venta_id': v.ventaId,
          'tienda_id': v.tiendaId,
          'usu_responsable': v.usuResponsable,
          'venta_fecha': v.ventaFecha?.toIso8601String(),
          'venta_total': v.ventaTotal
        });
        
        await db.writeTxn(() async {
          v.estado = 2;
          await db.ventas.put(v);
        });
      } catch (e) {}
    }
  }

  Future<void> pullVentas() async {
    try {
      final resp = await supa.client.from('venta').select();
      if (resp is List) {
        final list = resp;
        final db = await isar.db;
        await db.writeTxn(() async {
          for (final item in list) {
            final ventaId = (item['venta_id'] ?? item['id']) as int? ?? DateTime.now().millisecondsSinceEpoch;
            final exists = await db.ventas.filter().ventaIdEqualTo(ventaId).findFirst();
            if (exists == null) {
              final v = Venta()
                ..ventaId = ventaId
                ..tiendaId = item['tienda_id'] as int?
                ..usuResponsable = item['usu_responsable'] as int?
                ..ventaFecha = item['venta_fecha'] != null ? DateTime.parse(item['venta_fecha']) : DateTime.now()
                ..ventaTotal = (item['venta_total'] as num?)?.toDouble()
                ..estado = 2;
              await db.ventas.put(v);
            }
          }
        });
      }
    } catch (e) {}
  }

  Future<void> syncAll() async {
    await pullVentas();
    await pushVentas();
  }
}

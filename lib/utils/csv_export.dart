import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class CsvExport {
  static Future<String> ventasToCsv(List ventas) async {
    final sb = StringBuffer();
    sb.writeln('venta_id,tienda_id,venta_fecha,venta_total');
    for (final v in ventas) {
      final fecha = v.ventaFecha != null ? v.ventaFecha.toIso8601String() : '';
      sb.writeln('${v.ventaId},${v.tiendaId},$fecha,${v.ventaTotal ?? 0}');
    }
    return sb.toString();
  }

  static Future<String> saveAndShareCsv(String filename, String csv) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');
    await file.writeAsString(csv);
    await Share.shareXFiles([XFile(file.path)], text: 'Exportación CSV');
    return file.path;
  }
}

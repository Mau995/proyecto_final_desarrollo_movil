import 'package:isar/isar.dart';
part 'detalle_venta.g.dart';

@Collection()
class DetalleVenta {
  Id id = Isar.autoIncrement;
  late int detVentaId;
  int? ventaId;
  int? prodId;
  int? cantidad;
  double? precioUnit;
  double? subtotal;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

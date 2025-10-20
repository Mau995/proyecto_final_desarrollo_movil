import 'package:isar/isar.dart';
part 'detalle_compra.g.dart';

@Collection()
class DetalleCompra {
  Id id = Isar.autoIncrement;
  late int detCompraId;
  int? compraId;
  int? prodId;
  int? cantidad;
  double? precioUnit;
  double? subtotal;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

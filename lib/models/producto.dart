import 'package:isar/isar.dart';
part 'producto.g.dart';

@Collection()
class Producto {
  Id id = Isar.autoIncrement;
  late int prodId;
  String? prodNombre;
  int? prodCategoria;
  String? prodUnidadMedida;
  double? prodPrecioCompra;
  double? prodPrecioVenta;
  int? prodStockGlobal;
  int? prodMinimoStock;
  int? prodActivo;
  int? usuCreacion;
  int? usuModif;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

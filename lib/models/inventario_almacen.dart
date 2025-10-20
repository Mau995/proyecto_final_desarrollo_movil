import 'package:isar/isar.dart';
part 'inventario_almacen.g.dart';

@Collection()
class InventarioAlmacen {
  Id id = Isar.autoIncrement;
  late int invAId;
  int? almacenId;
  int? prodId;
  int? invAStock;
  int? usuCreacion;
  int? usuModif;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

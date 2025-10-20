import 'package:isar/isar.dart';
part 'inventario_tienda.g.dart';

@Collection()
class InventarioTienda {
  Id id = Isar.autoIncrement;
  late int invTId;
  int? tiendaId;
  int? prodId;
  int? invTStock;
  int? usuCreacion;
  int? usuModif;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

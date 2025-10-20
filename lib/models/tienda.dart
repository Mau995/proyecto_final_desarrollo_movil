import 'package:isar/isar.dart';
part 'tienda.g.dart';

@Collection()
class Tienda {
  Id id = Isar.autoIncrement;
  late int tiendaId;
  String? tiendaNombre;
  String? tiendaDireccion;
  int? usuEncargado;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

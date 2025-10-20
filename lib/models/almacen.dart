import 'package:isar/isar.dart';
part 'almacen.g.dart';

@Collection()
class Almacen {
  Id id = Isar.autoIncrement;
  late int almacenId;
  String? almacenNombre;
  String? almacenUbicacion;
  int? usuEncargado;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

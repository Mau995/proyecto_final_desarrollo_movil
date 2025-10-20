import 'package:isar/isar.dart';
part 'categoria.g.dart';

@Collection()
class Categoria {
  Id id = Isar.autoIncrement;
  late int catId;
  String? catNombre;
  int? usuCreacion;
  int? usuModif;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

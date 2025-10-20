import 'package:isar/isar.dart';
part 'rol.g.dart';

@Collection()
class Rol {
  Id id = Isar.autoIncrement;
  late int rlId;
  String? rlNombre;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

import 'package:isar/isar.dart';
part 'usuario.g.dart';

@Collection()
class Usuario {
  Id id = Isar.autoIncrement;
  late int usuId;
  String? usuNombre;
  String? usuPaterno;
  String? usuMaterno;
  String? usuUsuario;
  String? usuPassword; // store hashed password in production
  int? rlId;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

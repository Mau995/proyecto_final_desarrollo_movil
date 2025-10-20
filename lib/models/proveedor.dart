import 'package:isar/isar.dart';
part 'proveedor.g.dart';

@Collection()
class Proveedor {
  Id id = Isar.autoIncrement;
  late int provId;
  String? provNombre;
  String? provContacto;
  String? provTelefono;
  String? provEmail;
  int? usuCreacion;
  int? usuModif;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

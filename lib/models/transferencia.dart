import 'package:isar/isar.dart';
part 'transferencia.g.dart';

@Collection()
class Transferencia {
  Id id = Isar.autoIncrement;
  late int transfId;
  DateTime? transfFecha;
  String? origenTipo;
  int? origenId;
  String? destinoTipo;
  int? destinoId;
  int? usuResponsable;
  String? transfEstado;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

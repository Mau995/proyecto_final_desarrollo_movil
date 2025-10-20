import 'package:isar/isar.dart';
part 'compra.g.dart';

@Collection()
class Compra {
  Id id = Isar.autoIncrement;
  late int compraId;
  int? provId;
  int? almacenId;
  int? usuResponsable;
  DateTime? compraFecha;
  double? compraTotal;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

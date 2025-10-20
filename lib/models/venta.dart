import 'package:isar/isar.dart';
part 'venta.g.dart';

@Collection()
class Venta {
  Id id = Isar.autoIncrement;
  late int ventaId;
  int? tiendaId;
  int? usuResponsable;
  DateTime? ventaFecha;
  double? ventaTotal;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

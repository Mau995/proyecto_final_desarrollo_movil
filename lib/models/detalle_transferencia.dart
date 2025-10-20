import 'package:isar/isar.dart';
part 'detalle_transferencia.g.dart';

@Collection()
class DetalleTransferencia {
  Id id = Isar.autoIncrement;
  late int detTransfId;
  int? transfId;
  int? prodId;
  int? cantidad;
  DateTime? fxCreacion;
  DateTime? fxModif;
  int? estado;
}

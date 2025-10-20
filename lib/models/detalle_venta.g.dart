// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_venta.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDetalleVentaCollection on Isar {
  IsarCollection<DetalleVenta> get detalleVentas => this.collection();
}

const DetalleVentaSchema = CollectionSchema(
  name: r'DetalleVenta',
  id: 347346183717590768,
  properties: {
    r'cantidad': PropertySchema(
      id: 0,
      name: r'cantidad',
      type: IsarType.long,
    ),
    r'detVentaId': PropertySchema(
      id: 1,
      name: r'detVentaId',
      type: IsarType.long,
    ),
    r'estado': PropertySchema(
      id: 2,
      name: r'estado',
      type: IsarType.long,
    ),
    r'fxCreacion': PropertySchema(
      id: 3,
      name: r'fxCreacion',
      type: IsarType.dateTime,
    ),
    r'fxModif': PropertySchema(
      id: 4,
      name: r'fxModif',
      type: IsarType.dateTime,
    ),
    r'precioUnit': PropertySchema(
      id: 5,
      name: r'precioUnit',
      type: IsarType.double,
    ),
    r'prodId': PropertySchema(
      id: 6,
      name: r'prodId',
      type: IsarType.long,
    ),
    r'subtotal': PropertySchema(
      id: 7,
      name: r'subtotal',
      type: IsarType.double,
    ),
    r'ventaId': PropertySchema(
      id: 8,
      name: r'ventaId',
      type: IsarType.long,
    )
  },
  estimateSize: _detalleVentaEstimateSize,
  serialize: _detalleVentaSerialize,
  deserialize: _detalleVentaDeserialize,
  deserializeProp: _detalleVentaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _detalleVentaGetId,
  getLinks: _detalleVentaGetLinks,
  attach: _detalleVentaAttach,
  version: '3.1.0+1',
);

int _detalleVentaEstimateSize(
  DetalleVenta object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _detalleVentaSerialize(
  DetalleVenta object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cantidad);
  writer.writeLong(offsets[1], object.detVentaId);
  writer.writeLong(offsets[2], object.estado);
  writer.writeDateTime(offsets[3], object.fxCreacion);
  writer.writeDateTime(offsets[4], object.fxModif);
  writer.writeDouble(offsets[5], object.precioUnit);
  writer.writeLong(offsets[6], object.prodId);
  writer.writeDouble(offsets[7], object.subtotal);
  writer.writeLong(offsets[8], object.ventaId);
}

DetalleVenta _detalleVentaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DetalleVenta();
  object.cantidad = reader.readLongOrNull(offsets[0]);
  object.detVentaId = reader.readLong(offsets[1]);
  object.estado = reader.readLongOrNull(offsets[2]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[3]);
  object.fxModif = reader.readDateTimeOrNull(offsets[4]);
  object.id = id;
  object.precioUnit = reader.readDoubleOrNull(offsets[5]);
  object.prodId = reader.readLongOrNull(offsets[6]);
  object.subtotal = reader.readDoubleOrNull(offsets[7]);
  object.ventaId = reader.readLongOrNull(offsets[8]);
  return object;
}

P _detalleVentaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _detalleVentaGetId(DetalleVenta object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _detalleVentaGetLinks(DetalleVenta object) {
  return [];
}

void _detalleVentaAttach(
    IsarCollection<dynamic> col, Id id, DetalleVenta object) {
  object.id = id;
}

extension DetalleVentaQueryWhereSort
    on QueryBuilder<DetalleVenta, DetalleVenta, QWhere> {
  QueryBuilder<DetalleVenta, DetalleVenta, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DetalleVentaQueryWhere
    on QueryBuilder<DetalleVenta, DetalleVenta, QWhereClause> {
  QueryBuilder<DetalleVenta, DetalleVenta, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DetalleVentaQueryFilter
    on QueryBuilder<DetalleVenta, DetalleVenta, QFilterCondition> {
  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      cantidadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cantidad',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      cantidadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cantidad',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      cantidadEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantidad',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      cantidadGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cantidad',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      cantidadLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cantidad',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      cantidadBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cantidad',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      detVentaIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'detVentaId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      detVentaIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'detVentaId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      detVentaIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'detVentaId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      detVentaIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'detVentaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition> estadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      estadoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      estadoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition> estadoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxCreacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxCreacionGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxCreacionLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxCreacionBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fxCreacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxModifEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxModifGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxModifLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      fxModifBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fxModif',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      precioUnitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precioUnit',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      precioUnitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precioUnit',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      precioUnitEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precioUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      precioUnitGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precioUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      precioUnitLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precioUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      precioUnitBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precioUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      prodIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodId',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      prodIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodId',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition> prodIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      prodIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      prodIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition> prodIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      subtotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subtotal',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      subtotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subtotal',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      subtotalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      subtotalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      subtotalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      subtotalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      ventaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ventaId',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      ventaIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ventaId',
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      ventaIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ventaId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      ventaIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ventaId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      ventaIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ventaId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterFilterCondition>
      ventaIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ventaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DetalleVentaQueryObject
    on QueryBuilder<DetalleVenta, DetalleVenta, QFilterCondition> {}

extension DetalleVentaQueryLinks
    on QueryBuilder<DetalleVenta, DetalleVenta, QFilterCondition> {}

extension DetalleVentaQuerySortBy
    on QueryBuilder<DetalleVenta, DetalleVenta, QSortBy> {
  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByCantidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidad', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByCantidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidad', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByDetVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detVentaId', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy>
      sortByDetVentaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detVentaId', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy>
      sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByPrecioUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioUnit', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy>
      sortByPrecioUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioUnit', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaId', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> sortByVentaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaId', Sort.desc);
    });
  }
}

extension DetalleVentaQuerySortThenBy
    on QueryBuilder<DetalleVenta, DetalleVenta, QSortThenBy> {
  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByCantidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidad', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByCantidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidad', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByDetVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detVentaId', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy>
      thenByDetVentaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detVentaId', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy>
      thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByPrecioUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioUnit', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy>
      thenByPrecioUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioUnit', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaId', Sort.asc);
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QAfterSortBy> thenByVentaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaId', Sort.desc);
    });
  }
}

extension DetalleVentaQueryWhereDistinct
    on QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> {
  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctByCantidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cantidad');
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctByDetVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'detVentaId');
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctByPrecioUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'precioUnit');
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodId');
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
    });
  }

  QueryBuilder<DetalleVenta, DetalleVenta, QDistinct> distinctByVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ventaId');
    });
  }
}

extension DetalleVentaQueryProperty
    on QueryBuilder<DetalleVenta, DetalleVenta, QQueryProperty> {
  QueryBuilder<DetalleVenta, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DetalleVenta, int?, QQueryOperations> cantidadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cantidad');
    });
  }

  QueryBuilder<DetalleVenta, int, QQueryOperations> detVentaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'detVentaId');
    });
  }

  QueryBuilder<DetalleVenta, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<DetalleVenta, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<DetalleVenta, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<DetalleVenta, double?, QQueryOperations> precioUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'precioUnit');
    });
  }

  QueryBuilder<DetalleVenta, int?, QQueryOperations> prodIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodId');
    });
  }

  QueryBuilder<DetalleVenta, double?, QQueryOperations> subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
    });
  }

  QueryBuilder<DetalleVenta, int?, QQueryOperations> ventaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ventaId');
    });
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_compra.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDetalleCompraCollection on Isar {
  IsarCollection<DetalleCompra> get detalleCompras => this.collection();
}

const DetalleCompraSchema = CollectionSchema(
  name: r'DetalleCompra',
  id: 7378530474597639829,
  properties: {
    r'cantidad': PropertySchema(
      id: 0,
      name: r'cantidad',
      type: IsarType.long,
    ),
    r'compraId': PropertySchema(
      id: 1,
      name: r'compraId',
      type: IsarType.long,
    ),
    r'detCompraId': PropertySchema(
      id: 2,
      name: r'detCompraId',
      type: IsarType.long,
    ),
    r'estado': PropertySchema(
      id: 3,
      name: r'estado',
      type: IsarType.long,
    ),
    r'fxCreacion': PropertySchema(
      id: 4,
      name: r'fxCreacion',
      type: IsarType.dateTime,
    ),
    r'fxModif': PropertySchema(
      id: 5,
      name: r'fxModif',
      type: IsarType.dateTime,
    ),
    r'precioUnit': PropertySchema(
      id: 6,
      name: r'precioUnit',
      type: IsarType.double,
    ),
    r'prodId': PropertySchema(
      id: 7,
      name: r'prodId',
      type: IsarType.long,
    ),
    r'subtotal': PropertySchema(
      id: 8,
      name: r'subtotal',
      type: IsarType.double,
    )
  },
  estimateSize: _detalleCompraEstimateSize,
  serialize: _detalleCompraSerialize,
  deserialize: _detalleCompraDeserialize,
  deserializeProp: _detalleCompraDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _detalleCompraGetId,
  getLinks: _detalleCompraGetLinks,
  attach: _detalleCompraAttach,
  version: '3.1.0+1',
);

int _detalleCompraEstimateSize(
  DetalleCompra object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _detalleCompraSerialize(
  DetalleCompra object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cantidad);
  writer.writeLong(offsets[1], object.compraId);
  writer.writeLong(offsets[2], object.detCompraId);
  writer.writeLong(offsets[3], object.estado);
  writer.writeDateTime(offsets[4], object.fxCreacion);
  writer.writeDateTime(offsets[5], object.fxModif);
  writer.writeDouble(offsets[6], object.precioUnit);
  writer.writeLong(offsets[7], object.prodId);
  writer.writeDouble(offsets[8], object.subtotal);
}

DetalleCompra _detalleCompraDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DetalleCompra();
  object.cantidad = reader.readLongOrNull(offsets[0]);
  object.compraId = reader.readLongOrNull(offsets[1]);
  object.detCompraId = reader.readLong(offsets[2]);
  object.estado = reader.readLongOrNull(offsets[3]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[4]);
  object.fxModif = reader.readDateTimeOrNull(offsets[5]);
  object.id = id;
  object.precioUnit = reader.readDoubleOrNull(offsets[6]);
  object.prodId = reader.readLongOrNull(offsets[7]);
  object.subtotal = reader.readDoubleOrNull(offsets[8]);
  return object;
}

P _detalleCompraDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _detalleCompraGetId(DetalleCompra object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _detalleCompraGetLinks(DetalleCompra object) {
  return [];
}

void _detalleCompraAttach(
    IsarCollection<dynamic> col, Id id, DetalleCompra object) {
  object.id = id;
}

extension DetalleCompraQueryWhereSort
    on QueryBuilder<DetalleCompra, DetalleCompra, QWhere> {
  QueryBuilder<DetalleCompra, DetalleCompra, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DetalleCompraQueryWhere
    on QueryBuilder<DetalleCompra, DetalleCompra, QWhereClause> {
  QueryBuilder<DetalleCompra, DetalleCompra, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterWhereClause> idBetween(
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

extension DetalleCompraQueryFilter
    on QueryBuilder<DetalleCompra, DetalleCompra, QFilterCondition> {
  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      cantidadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cantidad',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      cantidadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cantidad',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      cantidadEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cantidad',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      compraIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'compraId',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      compraIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'compraId',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      compraIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compraId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      compraIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'compraId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      compraIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'compraId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      compraIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'compraId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      detCompraIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'detCompraId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      detCompraIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'detCompraId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      detCompraIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'detCompraId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      detCompraIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'detCompraId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      estadoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      estadoBetween(
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      fxCreacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      fxModifEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      precioUnitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precioUnit',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      precioUnitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precioUnit',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      prodIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodId',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      prodIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodId',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      prodIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodId',
        value: value,
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      prodIdBetween(
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      subtotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subtotal',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
      subtotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subtotal',
      ));
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterFilterCondition>
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
}

extension DetalleCompraQueryObject
    on QueryBuilder<DetalleCompra, DetalleCompra, QFilterCondition> {}

extension DetalleCompraQueryLinks
    on QueryBuilder<DetalleCompra, DetalleCompra, QFilterCondition> {}

extension DetalleCompraQuerySortBy
    on QueryBuilder<DetalleCompra, DetalleCompra, QSortBy> {
  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByCantidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidad', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      sortByCantidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidad', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraId', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      sortByCompraIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraId', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByDetCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detCompraId', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      sortByDetCompraIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detCompraId', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByPrecioUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioUnit', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      sortByPrecioUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioUnit', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> sortBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      sortBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }
}

extension DetalleCompraQuerySortThenBy
    on QueryBuilder<DetalleCompra, DetalleCompra, QSortThenBy> {
  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByCantidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidad', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      thenByCantidadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cantidad', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraId', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      thenByCompraIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraId', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByDetCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detCompraId', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      thenByDetCompraIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'detCompraId', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByPrecioUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioUnit', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      thenByPrecioUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precioUnit', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy> thenBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QAfterSortBy>
      thenBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }
}

extension DetalleCompraQueryWhereDistinct
    on QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> {
  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> distinctByCantidad() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cantidad');
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> distinctByCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'compraId');
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct>
      distinctByDetCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'detCompraId');
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> distinctByPrecioUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'precioUnit');
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> distinctByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodId');
    });
  }

  QueryBuilder<DetalleCompra, DetalleCompra, QDistinct> distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
    });
  }
}

extension DetalleCompraQueryProperty
    on QueryBuilder<DetalleCompra, DetalleCompra, QQueryProperty> {
  QueryBuilder<DetalleCompra, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DetalleCompra, int?, QQueryOperations> cantidadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cantidad');
    });
  }

  QueryBuilder<DetalleCompra, int?, QQueryOperations> compraIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'compraId');
    });
  }

  QueryBuilder<DetalleCompra, int, QQueryOperations> detCompraIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'detCompraId');
    });
  }

  QueryBuilder<DetalleCompra, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<DetalleCompra, DateTime?, QQueryOperations>
      fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<DetalleCompra, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<DetalleCompra, double?, QQueryOperations> precioUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'precioUnit');
    });
  }

  QueryBuilder<DetalleCompra, int?, QQueryOperations> prodIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodId');
    });
  }

  QueryBuilder<DetalleCompra, double?, QQueryOperations> subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
    });
  }
}

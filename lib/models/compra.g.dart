// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compra.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCompraCollection on Isar {
  IsarCollection<Compra> get compras => this.collection();
}

const CompraSchema = CollectionSchema(
  name: r'Compra',
  id: 5991186631391069315,
  properties: {
    r'almacenId': PropertySchema(
      id: 0,
      name: r'almacenId',
      type: IsarType.long,
    ),
    r'compraFecha': PropertySchema(
      id: 1,
      name: r'compraFecha',
      type: IsarType.dateTime,
    ),
    r'compraId': PropertySchema(
      id: 2,
      name: r'compraId',
      type: IsarType.long,
    ),
    r'compraTotal': PropertySchema(
      id: 3,
      name: r'compraTotal',
      type: IsarType.double,
    ),
    r'estado': PropertySchema(
      id: 4,
      name: r'estado',
      type: IsarType.long,
    ),
    r'fxCreacion': PropertySchema(
      id: 5,
      name: r'fxCreacion',
      type: IsarType.dateTime,
    ),
    r'fxModif': PropertySchema(
      id: 6,
      name: r'fxModif',
      type: IsarType.dateTime,
    ),
    r'provId': PropertySchema(
      id: 7,
      name: r'provId',
      type: IsarType.long,
    ),
    r'usuResponsable': PropertySchema(
      id: 8,
      name: r'usuResponsable',
      type: IsarType.long,
    )
  },
  estimateSize: _compraEstimateSize,
  serialize: _compraSerialize,
  deserialize: _compraDeserialize,
  deserializeProp: _compraDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _compraGetId,
  getLinks: _compraGetLinks,
  attach: _compraAttach,
  version: '3.1.0+1',
);

int _compraEstimateSize(
  Compra object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _compraSerialize(
  Compra object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.almacenId);
  writer.writeDateTime(offsets[1], object.compraFecha);
  writer.writeLong(offsets[2], object.compraId);
  writer.writeDouble(offsets[3], object.compraTotal);
  writer.writeLong(offsets[4], object.estado);
  writer.writeDateTime(offsets[5], object.fxCreacion);
  writer.writeDateTime(offsets[6], object.fxModif);
  writer.writeLong(offsets[7], object.provId);
  writer.writeLong(offsets[8], object.usuResponsable);
}

Compra _compraDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Compra();
  object.almacenId = reader.readLongOrNull(offsets[0]);
  object.compraFecha = reader.readDateTimeOrNull(offsets[1]);
  object.compraId = reader.readLong(offsets[2]);
  object.compraTotal = reader.readDoubleOrNull(offsets[3]);
  object.estado = reader.readLongOrNull(offsets[4]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[5]);
  object.fxModif = reader.readDateTimeOrNull(offsets[6]);
  object.id = id;
  object.provId = reader.readLongOrNull(offsets[7]);
  object.usuResponsable = reader.readLongOrNull(offsets[8]);
  return object;
}

P _compraDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _compraGetId(Compra object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _compraGetLinks(Compra object) {
  return [];
}

void _compraAttach(IsarCollection<dynamic> col, Id id, Compra object) {
  object.id = id;
}

extension CompraQueryWhereSort on QueryBuilder<Compra, Compra, QWhere> {
  QueryBuilder<Compra, Compra, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CompraQueryWhere on QueryBuilder<Compra, Compra, QWhereClause> {
  QueryBuilder<Compra, Compra, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Compra, Compra, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Compra, Compra, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Compra, Compra, QAfterWhereClause> idBetween(
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

extension CompraQueryFilter on QueryBuilder<Compra, Compra, QFilterCondition> {
  QueryBuilder<Compra, Compra, QAfterFilterCondition> almacenIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'almacenId',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> almacenIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'almacenId',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> almacenIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'almacenId',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> almacenIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'almacenId',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> almacenIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'almacenId',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> almacenIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'almacenId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraFechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'compraFecha',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraFechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'compraFecha',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraFechaEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compraFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraFechaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'compraFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraFechaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'compraFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraFechaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'compraFecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compraId',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraIdGreaterThan(
    int value, {
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraIdLessThan(
    int value, {
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraTotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'compraTotal',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraTotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'compraTotal',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraTotalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compraTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraTotalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'compraTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraTotalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'compraTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> compraTotalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'compraTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> estadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxCreacionGreaterThan(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Compra, Compra, QAfterFilterCondition> provIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'provId',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> provIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'provId',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> provIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provId',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> provIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'provId',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> provIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'provId',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> provIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'provId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> usuResponsableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuResponsable',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition>
      usuResponsableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuResponsable',
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> usuResponsableEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuResponsable',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> usuResponsableGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuResponsable',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> usuResponsableLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuResponsable',
        value: value,
      ));
    });
  }

  QueryBuilder<Compra, Compra, QAfterFilterCondition> usuResponsableBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuResponsable',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CompraQueryObject on QueryBuilder<Compra, Compra, QFilterCondition> {}

extension CompraQueryLinks on QueryBuilder<Compra, Compra, QFilterCondition> {}

extension CompraQuerySortBy on QueryBuilder<Compra, Compra, QSortBy> {
  QueryBuilder<Compra, Compra, QAfterSortBy> sortByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByAlmacenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByCompraFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraFecha', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByCompraFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraFecha', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraId', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByCompraIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraId', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByCompraTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraTotal', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByCompraTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraTotal', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByProvId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provId', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByProvIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provId', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> sortByUsuResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.desc);
    });
  }
}

extension CompraQuerySortThenBy on QueryBuilder<Compra, Compra, QSortThenBy> {
  QueryBuilder<Compra, Compra, QAfterSortBy> thenByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByAlmacenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByCompraFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraFecha', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByCompraFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraFecha', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraId', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByCompraIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraId', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByCompraTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraTotal', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByCompraTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'compraTotal', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByProvId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provId', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByProvIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provId', Sort.desc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.asc);
    });
  }

  QueryBuilder<Compra, Compra, QAfterSortBy> thenByUsuResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.desc);
    });
  }
}

extension CompraQueryWhereDistinct on QueryBuilder<Compra, Compra, QDistinct> {
  QueryBuilder<Compra, Compra, QDistinct> distinctByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'almacenId');
    });
  }

  QueryBuilder<Compra, Compra, QDistinct> distinctByCompraFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'compraFecha');
    });
  }

  QueryBuilder<Compra, Compra, QDistinct> distinctByCompraId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'compraId');
    });
  }

  QueryBuilder<Compra, Compra, QDistinct> distinctByCompraTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'compraTotal');
    });
  }

  QueryBuilder<Compra, Compra, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Compra, Compra, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Compra, Compra, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Compra, Compra, QDistinct> distinctByProvId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'provId');
    });
  }

  QueryBuilder<Compra, Compra, QDistinct> distinctByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuResponsable');
    });
  }
}

extension CompraQueryProperty on QueryBuilder<Compra, Compra, QQueryProperty> {
  QueryBuilder<Compra, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Compra, int?, QQueryOperations> almacenIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'almacenId');
    });
  }

  QueryBuilder<Compra, DateTime?, QQueryOperations> compraFechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'compraFecha');
    });
  }

  QueryBuilder<Compra, int, QQueryOperations> compraIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'compraId');
    });
  }

  QueryBuilder<Compra, double?, QQueryOperations> compraTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'compraTotal');
    });
  }

  QueryBuilder<Compra, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Compra, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Compra, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Compra, int?, QQueryOperations> provIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'provId');
    });
  }

  QueryBuilder<Compra, int?, QQueryOperations> usuResponsableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuResponsable');
    });
  }
}

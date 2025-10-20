// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventario_almacen.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInventarioAlmacenCollection on Isar {
  IsarCollection<InventarioAlmacen> get inventarioAlmacens => this.collection();
}

const InventarioAlmacenSchema = CollectionSchema(
  name: r'InventarioAlmacen',
  id: 1630108376758008561,
  properties: {
    r'almacenId': PropertySchema(
      id: 0,
      name: r'almacenId',
      type: IsarType.long,
    ),
    r'estado': PropertySchema(
      id: 1,
      name: r'estado',
      type: IsarType.long,
    ),
    r'fxCreacion': PropertySchema(
      id: 2,
      name: r'fxCreacion',
      type: IsarType.dateTime,
    ),
    r'fxModif': PropertySchema(
      id: 3,
      name: r'fxModif',
      type: IsarType.dateTime,
    ),
    r'invAId': PropertySchema(
      id: 4,
      name: r'invAId',
      type: IsarType.long,
    ),
    r'invAStock': PropertySchema(
      id: 5,
      name: r'invAStock',
      type: IsarType.long,
    ),
    r'prodId': PropertySchema(
      id: 6,
      name: r'prodId',
      type: IsarType.long,
    ),
    r'usuCreacion': PropertySchema(
      id: 7,
      name: r'usuCreacion',
      type: IsarType.long,
    ),
    r'usuModif': PropertySchema(
      id: 8,
      name: r'usuModif',
      type: IsarType.long,
    )
  },
  estimateSize: _inventarioAlmacenEstimateSize,
  serialize: _inventarioAlmacenSerialize,
  deserialize: _inventarioAlmacenDeserialize,
  deserializeProp: _inventarioAlmacenDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _inventarioAlmacenGetId,
  getLinks: _inventarioAlmacenGetLinks,
  attach: _inventarioAlmacenAttach,
  version: '3.1.0+1',
);

int _inventarioAlmacenEstimateSize(
  InventarioAlmacen object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _inventarioAlmacenSerialize(
  InventarioAlmacen object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.almacenId);
  writer.writeLong(offsets[1], object.estado);
  writer.writeDateTime(offsets[2], object.fxCreacion);
  writer.writeDateTime(offsets[3], object.fxModif);
  writer.writeLong(offsets[4], object.invAId);
  writer.writeLong(offsets[5], object.invAStock);
  writer.writeLong(offsets[6], object.prodId);
  writer.writeLong(offsets[7], object.usuCreacion);
  writer.writeLong(offsets[8], object.usuModif);
}

InventarioAlmacen _inventarioAlmacenDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InventarioAlmacen();
  object.almacenId = reader.readLongOrNull(offsets[0]);
  object.estado = reader.readLongOrNull(offsets[1]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[2]);
  object.fxModif = reader.readDateTimeOrNull(offsets[3]);
  object.id = id;
  object.invAId = reader.readLong(offsets[4]);
  object.invAStock = reader.readLongOrNull(offsets[5]);
  object.prodId = reader.readLongOrNull(offsets[6]);
  object.usuCreacion = reader.readLongOrNull(offsets[7]);
  object.usuModif = reader.readLongOrNull(offsets[8]);
  return object;
}

P _inventarioAlmacenDeserializeProp<P>(
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
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _inventarioAlmacenGetId(InventarioAlmacen object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _inventarioAlmacenGetLinks(
    InventarioAlmacen object) {
  return [];
}

void _inventarioAlmacenAttach(
    IsarCollection<dynamic> col, Id id, InventarioAlmacen object) {
  object.id = id;
}

extension InventarioAlmacenQueryWhereSort
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QWhere> {
  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InventarioAlmacenQueryWhere
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QWhereClause> {
  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterWhereClause>
      idBetween(
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

extension InventarioAlmacenQueryFilter
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QFilterCondition> {
  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      almacenIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'almacenId',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      almacenIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'almacenId',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      almacenIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'almacenId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      almacenIdGreaterThan(
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      almacenIdLessThan(
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      almacenIdBetween(
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      estadoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      fxCreacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      fxModifEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invAId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invAId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invAId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invAId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAStockIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'invAStock',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAStockIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'invAStock',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAStockEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invAStock',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAStockGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invAStock',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAStockLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invAStock',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      invAStockBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invAStock',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      prodIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodId',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      prodIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodId',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      prodIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
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

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuCreacionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuCreacionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuCreacionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuCreacionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuCreacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuModifEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuModif',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuModifGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuModif',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuModifLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuModif',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterFilterCondition>
      usuModifBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuModif',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InventarioAlmacenQueryObject
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QFilterCondition> {}

extension InventarioAlmacenQueryLinks
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QFilterCondition> {}

extension InventarioAlmacenQuerySortBy
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QSortBy> {
  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByAlmacenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByInvAId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invAId', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByInvAIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invAId', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByInvAStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invAStock', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByInvAStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invAStock', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      sortByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension InventarioAlmacenQuerySortThenBy
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QSortThenBy> {
  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByAlmacenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByInvAId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invAId', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByInvAIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invAId', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByInvAStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invAStock', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByInvAStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invAStock', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QAfterSortBy>
      thenByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension InventarioAlmacenQueryWhereDistinct
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct> {
  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'almacenId');
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByInvAId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invAId');
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByInvAStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invAStock');
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodId');
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuCreacion');
    });
  }

  QueryBuilder<InventarioAlmacen, InventarioAlmacen, QDistinct>
      distinctByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuModif');
    });
  }
}

extension InventarioAlmacenQueryProperty
    on QueryBuilder<InventarioAlmacen, InventarioAlmacen, QQueryProperty> {
  QueryBuilder<InventarioAlmacen, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InventarioAlmacen, int?, QQueryOperations> almacenIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'almacenId');
    });
  }

  QueryBuilder<InventarioAlmacen, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<InventarioAlmacen, DateTime?, QQueryOperations>
      fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<InventarioAlmacen, DateTime?, QQueryOperations>
      fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<InventarioAlmacen, int, QQueryOperations> invAIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invAId');
    });
  }

  QueryBuilder<InventarioAlmacen, int?, QQueryOperations> invAStockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invAStock');
    });
  }

  QueryBuilder<InventarioAlmacen, int?, QQueryOperations> prodIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodId');
    });
  }

  QueryBuilder<InventarioAlmacen, int?, QQueryOperations>
      usuCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuCreacion');
    });
  }

  QueryBuilder<InventarioAlmacen, int?, QQueryOperations> usuModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuModif');
    });
  }
}

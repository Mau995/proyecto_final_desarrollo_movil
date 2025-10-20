// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'almacen.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAlmacenCollection on Isar {
  IsarCollection<Almacen> get almacens => this.collection();
}

const AlmacenSchema = CollectionSchema(
  name: r'Almacen',
  id: 4732178956106050056,
  properties: {
    r'almacenId': PropertySchema(
      id: 0,
      name: r'almacenId',
      type: IsarType.long,
    ),
    r'almacenNombre': PropertySchema(
      id: 1,
      name: r'almacenNombre',
      type: IsarType.string,
    ),
    r'almacenUbicacion': PropertySchema(
      id: 2,
      name: r'almacenUbicacion',
      type: IsarType.string,
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
    r'usuEncargado': PropertySchema(
      id: 6,
      name: r'usuEncargado',
      type: IsarType.long,
    )
  },
  estimateSize: _almacenEstimateSize,
  serialize: _almacenSerialize,
  deserialize: _almacenDeserialize,
  deserializeProp: _almacenDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _almacenGetId,
  getLinks: _almacenGetLinks,
  attach: _almacenAttach,
  version: '3.1.0+1',
);

int _almacenEstimateSize(
  Almacen object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.almacenNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.almacenUbicacion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _almacenSerialize(
  Almacen object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.almacenId);
  writer.writeString(offsets[1], object.almacenNombre);
  writer.writeString(offsets[2], object.almacenUbicacion);
  writer.writeLong(offsets[3], object.estado);
  writer.writeDateTime(offsets[4], object.fxCreacion);
  writer.writeDateTime(offsets[5], object.fxModif);
  writer.writeLong(offsets[6], object.usuEncargado);
}

Almacen _almacenDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Almacen();
  object.almacenId = reader.readLong(offsets[0]);
  object.almacenNombre = reader.readStringOrNull(offsets[1]);
  object.almacenUbicacion = reader.readStringOrNull(offsets[2]);
  object.estado = reader.readLongOrNull(offsets[3]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[4]);
  object.fxModif = reader.readDateTimeOrNull(offsets[5]);
  object.id = id;
  object.usuEncargado = reader.readLongOrNull(offsets[6]);
  return object;
}

P _almacenDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _almacenGetId(Almacen object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _almacenGetLinks(Almacen object) {
  return [];
}

void _almacenAttach(IsarCollection<dynamic> col, Id id, Almacen object) {
  object.id = id;
}

extension AlmacenQueryWhereSort on QueryBuilder<Almacen, Almacen, QWhere> {
  QueryBuilder<Almacen, Almacen, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AlmacenQueryWhere on QueryBuilder<Almacen, Almacen, QWhereClause> {
  QueryBuilder<Almacen, Almacen, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Almacen, Almacen, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterWhereClause> idBetween(
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

extension AlmacenQueryFilter
    on QueryBuilder<Almacen, Almacen, QFilterCondition> {
  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'almacenId',
        value: value,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenIdGreaterThan(
    int value, {
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenIdLessThan(
    int value, {
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'almacenNombre',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'almacenNombre',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'almacenNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'almacenNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'almacenNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'almacenNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'almacenNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'almacenNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'almacenNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'almacenNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'almacenNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'almacenNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'almacenUbicacion',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'almacenUbicacion',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenUbicacionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'almacenUbicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'almacenUbicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'almacenUbicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenUbicacionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'almacenUbicacion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'almacenUbicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'almacenUbicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'almacenUbicacion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> almacenUbicacionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'almacenUbicacion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'almacenUbicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      almacenUbicacionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'almacenUbicacion',
        value: '',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> estadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxCreacionGreaterThan(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> usuEncargadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuEncargado',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition>
      usuEncargadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuEncargado',
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> usuEncargadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuEncargado',
        value: value,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> usuEncargadoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuEncargado',
        value: value,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> usuEncargadoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuEncargado',
        value: value,
      ));
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterFilterCondition> usuEncargadoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuEncargado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AlmacenQueryObject
    on QueryBuilder<Almacen, Almacen, QFilterCondition> {}

extension AlmacenQueryLinks
    on QueryBuilder<Almacen, Almacen, QFilterCondition> {}

extension AlmacenQuerySortBy on QueryBuilder<Almacen, Almacen, QSortBy> {
  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByAlmacenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByAlmacenNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenNombre', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByAlmacenNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenNombre', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByAlmacenUbicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenUbicacion', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByAlmacenUbicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenUbicacion', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByUsuEncargado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuEncargado', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> sortByUsuEncargadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuEncargado', Sort.desc);
    });
  }
}

extension AlmacenQuerySortThenBy
    on QueryBuilder<Almacen, Almacen, QSortThenBy> {
  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByAlmacenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenId', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByAlmacenNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenNombre', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByAlmacenNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenNombre', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByAlmacenUbicacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenUbicacion', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByAlmacenUbicacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'almacenUbicacion', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByUsuEncargado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuEncargado', Sort.asc);
    });
  }

  QueryBuilder<Almacen, Almacen, QAfterSortBy> thenByUsuEncargadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuEncargado', Sort.desc);
    });
  }
}

extension AlmacenQueryWhereDistinct
    on QueryBuilder<Almacen, Almacen, QDistinct> {
  QueryBuilder<Almacen, Almacen, QDistinct> distinctByAlmacenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'almacenId');
    });
  }

  QueryBuilder<Almacen, Almacen, QDistinct> distinctByAlmacenNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'almacenNombre',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Almacen, Almacen, QDistinct> distinctByAlmacenUbicacion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'almacenUbicacion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Almacen, Almacen, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Almacen, Almacen, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Almacen, Almacen, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Almacen, Almacen, QDistinct> distinctByUsuEncargado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuEncargado');
    });
  }
}

extension AlmacenQueryProperty
    on QueryBuilder<Almacen, Almacen, QQueryProperty> {
  QueryBuilder<Almacen, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Almacen, int, QQueryOperations> almacenIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'almacenId');
    });
  }

  QueryBuilder<Almacen, String?, QQueryOperations> almacenNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'almacenNombre');
    });
  }

  QueryBuilder<Almacen, String?, QQueryOperations> almacenUbicacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'almacenUbicacion');
    });
  }

  QueryBuilder<Almacen, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Almacen, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Almacen, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Almacen, int?, QQueryOperations> usuEncargadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuEncargado');
    });
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rol.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRolCollection on Isar {
  IsarCollection<Rol> get rols => this.collection();
}

const RolSchema = CollectionSchema(
  name: r'Rol',
  id: -1783669233979747451,
  properties: {
    r'estado': PropertySchema(
      id: 0,
      name: r'estado',
      type: IsarType.long,
    ),
    r'fxCreacion': PropertySchema(
      id: 1,
      name: r'fxCreacion',
      type: IsarType.dateTime,
    ),
    r'fxModif': PropertySchema(
      id: 2,
      name: r'fxModif',
      type: IsarType.dateTime,
    ),
    r'rlId': PropertySchema(
      id: 3,
      name: r'rlId',
      type: IsarType.long,
    ),
    r'rlNombre': PropertySchema(
      id: 4,
      name: r'rlNombre',
      type: IsarType.string,
    )
  },
  estimateSize: _rolEstimateSize,
  serialize: _rolSerialize,
  deserialize: _rolDeserialize,
  deserializeProp: _rolDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _rolGetId,
  getLinks: _rolGetLinks,
  attach: _rolAttach,
  version: '3.1.0+1',
);

int _rolEstimateSize(
  Rol object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.rlNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _rolSerialize(
  Rol object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.estado);
  writer.writeDateTime(offsets[1], object.fxCreacion);
  writer.writeDateTime(offsets[2], object.fxModif);
  writer.writeLong(offsets[3], object.rlId);
  writer.writeString(offsets[4], object.rlNombre);
}

Rol _rolDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Rol();
  object.estado = reader.readLongOrNull(offsets[0]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[1]);
  object.fxModif = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.rlId = reader.readLong(offsets[3]);
  object.rlNombre = reader.readStringOrNull(offsets[4]);
  return object;
}

P _rolDeserializeProp<P>(
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
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _rolGetId(Rol object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _rolGetLinks(Rol object) {
  return [];
}

void _rolAttach(IsarCollection<dynamic> col, Id id, Rol object) {
  object.id = id;
}

extension RolQueryWhereSort on QueryBuilder<Rol, Rol, QWhere> {
  QueryBuilder<Rol, Rol, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RolQueryWhere on QueryBuilder<Rol, Rol, QWhereClause> {
  QueryBuilder<Rol, Rol, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Rol, Rol, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Rol, Rol, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Rol, Rol, QAfterWhereClause> idBetween(
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

extension RolQueryFilter on QueryBuilder<Rol, Rol, QFilterCondition> {
  QueryBuilder<Rol, Rol, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> estadoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxCreacionGreaterThan(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rlId',
        value: value,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rlId',
        value: value,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rlId',
        value: value,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rlId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rlNombre',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rlNombre',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rlNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rlNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rlNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rlNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rlNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rlNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rlNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rlNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rlNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Rol, Rol, QAfterFilterCondition> rlNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rlNombre',
        value: '',
      ));
    });
  }
}

extension RolQueryObject on QueryBuilder<Rol, Rol, QFilterCondition> {}

extension RolQueryLinks on QueryBuilder<Rol, Rol, QFilterCondition> {}

extension RolQuerySortBy on QueryBuilder<Rol, Rol, QSortBy> {
  QueryBuilder<Rol, Rol, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByRlId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlId', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByRlIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlId', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByRlNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlNombre', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> sortByRlNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlNombre', Sort.desc);
    });
  }
}

extension RolQuerySortThenBy on QueryBuilder<Rol, Rol, QSortThenBy> {
  QueryBuilder<Rol, Rol, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByRlId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlId', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByRlIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlId', Sort.desc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByRlNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlNombre', Sort.asc);
    });
  }

  QueryBuilder<Rol, Rol, QAfterSortBy> thenByRlNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlNombre', Sort.desc);
    });
  }
}

extension RolQueryWhereDistinct on QueryBuilder<Rol, Rol, QDistinct> {
  QueryBuilder<Rol, Rol, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Rol, Rol, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Rol, Rol, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Rol, Rol, QDistinct> distinctByRlId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rlId');
    });
  }

  QueryBuilder<Rol, Rol, QDistinct> distinctByRlNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rlNombre', caseSensitive: caseSensitive);
    });
  }
}

extension RolQueryProperty on QueryBuilder<Rol, Rol, QQueryProperty> {
  QueryBuilder<Rol, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Rol, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Rol, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Rol, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Rol, int, QQueryOperations> rlIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rlId');
    });
  }

  QueryBuilder<Rol, String?, QQueryOperations> rlNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rlNombre');
    });
  }
}

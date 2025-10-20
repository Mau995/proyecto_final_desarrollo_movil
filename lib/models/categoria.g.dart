// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCategoriaCollection on Isar {
  IsarCollection<Categoria> get categorias => this.collection();
}

const CategoriaSchema = CollectionSchema(
  name: r'Categoria',
  id: 8566002696729659875,
  properties: {
    r'catId': PropertySchema(
      id: 0,
      name: r'catId',
      type: IsarType.long,
    ),
    r'catNombre': PropertySchema(
      id: 1,
      name: r'catNombre',
      type: IsarType.string,
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
    r'usuCreacion': PropertySchema(
      id: 5,
      name: r'usuCreacion',
      type: IsarType.long,
    ),
    r'usuModif': PropertySchema(
      id: 6,
      name: r'usuModif',
      type: IsarType.long,
    )
  },
  estimateSize: _categoriaEstimateSize,
  serialize: _categoriaSerialize,
  deserialize: _categoriaDeserialize,
  deserializeProp: _categoriaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _categoriaGetId,
  getLinks: _categoriaGetLinks,
  attach: _categoriaAttach,
  version: '3.1.0+1',
);

int _categoriaEstimateSize(
  Categoria object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.catNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _categoriaSerialize(
  Categoria object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.catId);
  writer.writeString(offsets[1], object.catNombre);
  writer.writeLong(offsets[2], object.estado);
  writer.writeDateTime(offsets[3], object.fxCreacion);
  writer.writeDateTime(offsets[4], object.fxModif);
  writer.writeLong(offsets[5], object.usuCreacion);
  writer.writeLong(offsets[6], object.usuModif);
}

Categoria _categoriaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Categoria();
  object.catId = reader.readLong(offsets[0]);
  object.catNombre = reader.readStringOrNull(offsets[1]);
  object.estado = reader.readLongOrNull(offsets[2]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[3]);
  object.fxModif = reader.readDateTimeOrNull(offsets[4]);
  object.id = id;
  object.usuCreacion = reader.readLongOrNull(offsets[5]);
  object.usuModif = reader.readLongOrNull(offsets[6]);
  return object;
}

P _categoriaDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _categoriaGetId(Categoria object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _categoriaGetLinks(Categoria object) {
  return [];
}

void _categoriaAttach(IsarCollection<dynamic> col, Id id, Categoria object) {
  object.id = id;
}

extension CategoriaQueryWhereSort
    on QueryBuilder<Categoria, Categoria, QWhere> {
  QueryBuilder<Categoria, Categoria, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CategoriaQueryWhere
    on QueryBuilder<Categoria, Categoria, QWhereClause> {
  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterWhereClause> idBetween(
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

extension CategoriaQueryFilter
    on QueryBuilder<Categoria, Categoria, QFilterCondition> {
  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'catId',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'catId',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'catId',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'catId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'catNombre',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      catNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'catNombre',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'catNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      catNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'catNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'catNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'catNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'catNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'catNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'catNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'catNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> catNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'catNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      catNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'catNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> estadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      usuCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      usuCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuCreacionEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuCreacionLessThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuCreacionBetween(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition>
      usuModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuModifEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuModifGreaterThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuModifLessThan(
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

  QueryBuilder<Categoria, Categoria, QAfterFilterCondition> usuModifBetween(
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

extension CategoriaQueryObject
    on QueryBuilder<Categoria, Categoria, QFilterCondition> {}

extension CategoriaQueryLinks
    on QueryBuilder<Categoria, Categoria, QFilterCondition> {}

extension CategoriaQuerySortBy on QueryBuilder<Categoria, Categoria, QSortBy> {
  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByCatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catId', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByCatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catId', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByCatNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catNombre', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByCatNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catNombre', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> sortByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension CategoriaQuerySortThenBy
    on QueryBuilder<Categoria, Categoria, QSortThenBy> {
  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByCatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catId', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByCatIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catId', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByCatNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catNombre', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByCatNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'catNombre', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<Categoria, Categoria, QAfterSortBy> thenByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension CategoriaQueryWhereDistinct
    on QueryBuilder<Categoria, Categoria, QDistinct> {
  QueryBuilder<Categoria, Categoria, QDistinct> distinctByCatId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'catId');
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByCatNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'catNombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuCreacion');
    });
  }

  QueryBuilder<Categoria, Categoria, QDistinct> distinctByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuModif');
    });
  }
}

extension CategoriaQueryProperty
    on QueryBuilder<Categoria, Categoria, QQueryProperty> {
  QueryBuilder<Categoria, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Categoria, int, QQueryOperations> catIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'catId');
    });
  }

  QueryBuilder<Categoria, String?, QQueryOperations> catNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'catNombre');
    });
  }

  QueryBuilder<Categoria, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Categoria, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Categoria, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Categoria, int?, QQueryOperations> usuCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuCreacion');
    });
  }

  QueryBuilder<Categoria, int?, QQueryOperations> usuModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuModif');
    });
  }
}

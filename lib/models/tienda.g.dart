// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tienda.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTiendaCollection on Isar {
  IsarCollection<Tienda> get tiendas => this.collection();
}

const TiendaSchema = CollectionSchema(
  name: r'Tienda',
  id: 4297053856847555550,
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
    r'tiendaDireccion': PropertySchema(
      id: 3,
      name: r'tiendaDireccion',
      type: IsarType.string,
    ),
    r'tiendaId': PropertySchema(
      id: 4,
      name: r'tiendaId',
      type: IsarType.long,
    ),
    r'tiendaNombre': PropertySchema(
      id: 5,
      name: r'tiendaNombre',
      type: IsarType.string,
    ),
    r'usuEncargado': PropertySchema(
      id: 6,
      name: r'usuEncargado',
      type: IsarType.long,
    )
  },
  estimateSize: _tiendaEstimateSize,
  serialize: _tiendaSerialize,
  deserialize: _tiendaDeserialize,
  deserializeProp: _tiendaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tiendaGetId,
  getLinks: _tiendaGetLinks,
  attach: _tiendaAttach,
  version: '3.1.0+1',
);

int _tiendaEstimateSize(
  Tienda object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.tiendaDireccion;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tiendaNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tiendaSerialize(
  Tienda object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.estado);
  writer.writeDateTime(offsets[1], object.fxCreacion);
  writer.writeDateTime(offsets[2], object.fxModif);
  writer.writeString(offsets[3], object.tiendaDireccion);
  writer.writeLong(offsets[4], object.tiendaId);
  writer.writeString(offsets[5], object.tiendaNombre);
  writer.writeLong(offsets[6], object.usuEncargado);
}

Tienda _tiendaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Tienda();
  object.estado = reader.readLongOrNull(offsets[0]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[1]);
  object.fxModif = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.tiendaDireccion = reader.readStringOrNull(offsets[3]);
  object.tiendaId = reader.readLong(offsets[4]);
  object.tiendaNombre = reader.readStringOrNull(offsets[5]);
  object.usuEncargado = reader.readLongOrNull(offsets[6]);
  return object;
}

P _tiendaDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tiendaGetId(Tienda object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tiendaGetLinks(Tienda object) {
  return [];
}

void _tiendaAttach(IsarCollection<dynamic> col, Id id, Tienda object) {
  object.id = id;
}

extension TiendaQueryWhereSort on QueryBuilder<Tienda, Tienda, QWhere> {
  QueryBuilder<Tienda, Tienda, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TiendaQueryWhere on QueryBuilder<Tienda, Tienda, QWhereClause> {
  QueryBuilder<Tienda, Tienda, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Tienda, Tienda, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterWhereClause> idBetween(
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

extension TiendaQueryFilter on QueryBuilder<Tienda, Tienda, QFilterCondition> {
  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> estadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxCreacionGreaterThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tiendaDireccion',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition>
      tiendaDireccionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tiendaDireccion',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tiendaDireccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition>
      tiendaDireccionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tiendaDireccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tiendaDireccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tiendaDireccion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tiendaDireccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tiendaDireccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tiendaDireccion',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tiendaDireccion',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaDireccionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tiendaDireccion',
        value: '',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition>
      tiendaDireccionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tiendaDireccion',
        value: '',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tiendaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tiendaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tiendaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tiendaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tiendaNombre',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tiendaNombre',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tiendaNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tiendaNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tiendaNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tiendaNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tiendaNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tiendaNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tiendaNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tiendaNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tiendaNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> tiendaNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tiendaNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> usuEncargadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuEncargado',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> usuEncargadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuEncargado',
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> usuEncargadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuEncargado',
        value: value,
      ));
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> usuEncargadoGreaterThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> usuEncargadoLessThan(
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

  QueryBuilder<Tienda, Tienda, QAfterFilterCondition> usuEncargadoBetween(
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

extension TiendaQueryObject on QueryBuilder<Tienda, Tienda, QFilterCondition> {}

extension TiendaQueryLinks on QueryBuilder<Tienda, Tienda, QFilterCondition> {}

extension TiendaQuerySortBy on QueryBuilder<Tienda, Tienda, QSortBy> {
  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByTiendaDireccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaDireccion', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByTiendaDireccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaDireccion', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByTiendaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByTiendaNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaNombre', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByTiendaNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaNombre', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByUsuEncargado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuEncargado', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> sortByUsuEncargadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuEncargado', Sort.desc);
    });
  }
}

extension TiendaQuerySortThenBy on QueryBuilder<Tienda, Tienda, QSortThenBy> {
  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByTiendaDireccion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaDireccion', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByTiendaDireccionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaDireccion', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByTiendaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByTiendaNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaNombre', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByTiendaNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaNombre', Sort.desc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByUsuEncargado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuEncargado', Sort.asc);
    });
  }

  QueryBuilder<Tienda, Tienda, QAfterSortBy> thenByUsuEncargadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuEncargado', Sort.desc);
    });
  }
}

extension TiendaQueryWhereDistinct on QueryBuilder<Tienda, Tienda, QDistinct> {
  QueryBuilder<Tienda, Tienda, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Tienda, Tienda, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Tienda, Tienda, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Tienda, Tienda, QDistinct> distinctByTiendaDireccion(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tiendaDireccion',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tienda, Tienda, QDistinct> distinctByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tiendaId');
    });
  }

  QueryBuilder<Tienda, Tienda, QDistinct> distinctByTiendaNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tiendaNombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tienda, Tienda, QDistinct> distinctByUsuEncargado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuEncargado');
    });
  }
}

extension TiendaQueryProperty on QueryBuilder<Tienda, Tienda, QQueryProperty> {
  QueryBuilder<Tienda, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Tienda, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Tienda, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Tienda, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Tienda, String?, QQueryOperations> tiendaDireccionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tiendaDireccion');
    });
  }

  QueryBuilder<Tienda, int, QQueryOperations> tiendaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tiendaId');
    });
  }

  QueryBuilder<Tienda, String?, QQueryOperations> tiendaNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tiendaNombre');
    });
  }

  QueryBuilder<Tienda, int?, QQueryOperations> usuEncargadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuEncargado');
    });
  }
}

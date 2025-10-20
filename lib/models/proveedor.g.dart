// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proveedor.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProveedorCollection on Isar {
  IsarCollection<Proveedor> get proveedors => this.collection();
}

const ProveedorSchema = CollectionSchema(
  name: r'Proveedor',
  id: 1513744050638001131,
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
    r'provContacto': PropertySchema(
      id: 3,
      name: r'provContacto',
      type: IsarType.string,
    ),
    r'provEmail': PropertySchema(
      id: 4,
      name: r'provEmail',
      type: IsarType.string,
    ),
    r'provId': PropertySchema(
      id: 5,
      name: r'provId',
      type: IsarType.long,
    ),
    r'provNombre': PropertySchema(
      id: 6,
      name: r'provNombre',
      type: IsarType.string,
    ),
    r'provTelefono': PropertySchema(
      id: 7,
      name: r'provTelefono',
      type: IsarType.string,
    ),
    r'usuCreacion': PropertySchema(
      id: 8,
      name: r'usuCreacion',
      type: IsarType.long,
    ),
    r'usuModif': PropertySchema(
      id: 9,
      name: r'usuModif',
      type: IsarType.long,
    )
  },
  estimateSize: _proveedorEstimateSize,
  serialize: _proveedorSerialize,
  deserialize: _proveedorDeserialize,
  deserializeProp: _proveedorDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _proveedorGetId,
  getLinks: _proveedorGetLinks,
  attach: _proveedorAttach,
  version: '3.1.0+1',
);

int _proveedorEstimateSize(
  Proveedor object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.provContacto;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.provEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.provNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.provTelefono;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _proveedorSerialize(
  Proveedor object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.estado);
  writer.writeDateTime(offsets[1], object.fxCreacion);
  writer.writeDateTime(offsets[2], object.fxModif);
  writer.writeString(offsets[3], object.provContacto);
  writer.writeString(offsets[4], object.provEmail);
  writer.writeLong(offsets[5], object.provId);
  writer.writeString(offsets[6], object.provNombre);
  writer.writeString(offsets[7], object.provTelefono);
  writer.writeLong(offsets[8], object.usuCreacion);
  writer.writeLong(offsets[9], object.usuModif);
}

Proveedor _proveedorDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Proveedor();
  object.estado = reader.readLongOrNull(offsets[0]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[1]);
  object.fxModif = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.provContacto = reader.readStringOrNull(offsets[3]);
  object.provEmail = reader.readStringOrNull(offsets[4]);
  object.provId = reader.readLong(offsets[5]);
  object.provNombre = reader.readStringOrNull(offsets[6]);
  object.provTelefono = reader.readStringOrNull(offsets[7]);
  object.usuCreacion = reader.readLongOrNull(offsets[8]);
  object.usuModif = reader.readLongOrNull(offsets[9]);
  return object;
}

P _proveedorDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _proveedorGetId(Proveedor object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _proveedorGetLinks(Proveedor object) {
  return [];
}

void _proveedorAttach(IsarCollection<dynamic> col, Id id, Proveedor object) {
  object.id = id;
}

extension ProveedorQueryWhereSort
    on QueryBuilder<Proveedor, Proveedor, QWhere> {
  QueryBuilder<Proveedor, Proveedor, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProveedorQueryWhere
    on QueryBuilder<Proveedor, Proveedor, QWhereClause> {
  QueryBuilder<Proveedor, Proveedor, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Proveedor, Proveedor, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterWhereClause> idBetween(
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

extension ProveedorQueryFilter
    on QueryBuilder<Proveedor, Proveedor, QFilterCondition> {
  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> estadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'provContacto',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'provContacto',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provContactoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'provContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'provContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provContactoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'provContacto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'provContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'provContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'provContacto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provContactoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'provContacto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provContacto',
        value: '',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provContactoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'provContacto',
        value: '',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'provEmail',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'provEmail',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'provEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'provEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'provEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'provEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'provEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'provEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'provEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'provEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provId',
        value: value,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provIdGreaterThan(
    int value, {
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provIdLessThan(
    int value, {
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'provNombre',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'provNombre',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'provNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'provNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'provNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'provNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'provNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provNombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'provNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provNombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'provNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'provNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'provTelefono',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'provTelefono',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provTelefonoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provTelefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'provTelefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'provTelefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provTelefonoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'provTelefono',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'provTelefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'provTelefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'provTelefono',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> provTelefonoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'provTelefono',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provTelefono',
        value: '',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      provTelefonoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'provTelefono',
        value: '',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      usuCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      usuCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> usuCreacionEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> usuCreacionLessThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> usuCreacionBetween(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> usuModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition>
      usuModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> usuModifEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> usuModifGreaterThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> usuModifLessThan(
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

  QueryBuilder<Proveedor, Proveedor, QAfterFilterCondition> usuModifBetween(
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

extension ProveedorQueryObject
    on QueryBuilder<Proveedor, Proveedor, QFilterCondition> {}

extension ProveedorQueryLinks
    on QueryBuilder<Proveedor, Proveedor, QFilterCondition> {}

extension ProveedorQuerySortBy on QueryBuilder<Proveedor, Proveedor, QSortBy> {
  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvContacto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provContacto', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvContactoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provContacto', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provEmail', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provEmail', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provId', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provId', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provNombre', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provNombre', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvTelefono() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provTelefono', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByProvTelefonoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provTelefono', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> sortByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension ProveedorQuerySortThenBy
    on QueryBuilder<Proveedor, Proveedor, QSortThenBy> {
  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvContacto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provContacto', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvContactoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provContacto', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provEmail', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provEmail', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provId', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provId', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provNombre', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provNombre', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvTelefono() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provTelefono', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByProvTelefonoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provTelefono', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QAfterSortBy> thenByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension ProveedorQueryWhereDistinct
    on QueryBuilder<Proveedor, Proveedor, QDistinct> {
  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByProvContacto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'provContacto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByProvEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'provEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByProvId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'provId');
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByProvNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'provNombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByProvTelefono(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'provTelefono', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuCreacion');
    });
  }

  QueryBuilder<Proveedor, Proveedor, QDistinct> distinctByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuModif');
    });
  }
}

extension ProveedorQueryProperty
    on QueryBuilder<Proveedor, Proveedor, QQueryProperty> {
  QueryBuilder<Proveedor, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Proveedor, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Proveedor, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Proveedor, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Proveedor, String?, QQueryOperations> provContactoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'provContacto');
    });
  }

  QueryBuilder<Proveedor, String?, QQueryOperations> provEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'provEmail');
    });
  }

  QueryBuilder<Proveedor, int, QQueryOperations> provIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'provId');
    });
  }

  QueryBuilder<Proveedor, String?, QQueryOperations> provNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'provNombre');
    });
  }

  QueryBuilder<Proveedor, String?, QQueryOperations> provTelefonoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'provTelefono');
    });
  }

  QueryBuilder<Proveedor, int?, QQueryOperations> usuCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuCreacion');
    });
  }

  QueryBuilder<Proveedor, int?, QQueryOperations> usuModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuModif');
    });
  }
}

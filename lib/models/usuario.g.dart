// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUsuarioCollection on Isar {
  IsarCollection<Usuario> get usuarios => this.collection();
}

const UsuarioSchema = CollectionSchema(
  name: r'Usuario',
  id: 2086545823229412462,
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
    r'usuId': PropertySchema(
      id: 4,
      name: r'usuId',
      type: IsarType.long,
    ),
    r'usuMaterno': PropertySchema(
      id: 5,
      name: r'usuMaterno',
      type: IsarType.string,
    ),
    r'usuNombre': PropertySchema(
      id: 6,
      name: r'usuNombre',
      type: IsarType.string,
    ),
    r'usuPassword': PropertySchema(
      id: 7,
      name: r'usuPassword',
      type: IsarType.string,
    ),
    r'usuPaterno': PropertySchema(
      id: 8,
      name: r'usuPaterno',
      type: IsarType.string,
    ),
    r'usuUsuario': PropertySchema(
      id: 9,
      name: r'usuUsuario',
      type: IsarType.string,
    )
  },
  estimateSize: _usuarioEstimateSize,
  serialize: _usuarioSerialize,
  deserialize: _usuarioDeserialize,
  deserializeProp: _usuarioDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _usuarioGetId,
  getLinks: _usuarioGetLinks,
  attach: _usuarioAttach,
  version: '3.1.0+1',
);

int _usuarioEstimateSize(
  Usuario object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.usuMaterno;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.usuNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.usuPassword;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.usuPaterno;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.usuUsuario;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _usuarioSerialize(
  Usuario object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.estado);
  writer.writeDateTime(offsets[1], object.fxCreacion);
  writer.writeDateTime(offsets[2], object.fxModif);
  writer.writeLong(offsets[3], object.rlId);
  writer.writeLong(offsets[4], object.usuId);
  writer.writeString(offsets[5], object.usuMaterno);
  writer.writeString(offsets[6], object.usuNombre);
  writer.writeString(offsets[7], object.usuPassword);
  writer.writeString(offsets[8], object.usuPaterno);
  writer.writeString(offsets[9], object.usuUsuario);
}

Usuario _usuarioDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Usuario();
  object.estado = reader.readLongOrNull(offsets[0]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[1]);
  object.fxModif = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.rlId = reader.readLongOrNull(offsets[3]);
  object.usuId = reader.readLong(offsets[4]);
  object.usuMaterno = reader.readStringOrNull(offsets[5]);
  object.usuNombre = reader.readStringOrNull(offsets[6]);
  object.usuPassword = reader.readStringOrNull(offsets[7]);
  object.usuPaterno = reader.readStringOrNull(offsets[8]);
  object.usuUsuario = reader.readStringOrNull(offsets[9]);
  return object;
}

P _usuarioDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _usuarioGetId(Usuario object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _usuarioGetLinks(Usuario object) {
  return [];
}

void _usuarioAttach(IsarCollection<dynamic> col, Id id, Usuario object) {
  object.id = id;
}

extension UsuarioQueryWhereSort on QueryBuilder<Usuario, Usuario, QWhere> {
  QueryBuilder<Usuario, Usuario, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UsuarioQueryWhere on QueryBuilder<Usuario, Usuario, QWhereClause> {
  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterWhereClause> idBetween(
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

extension UsuarioQueryFilter
    on QueryBuilder<Usuario, Usuario, QFilterCondition> {
  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> estadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxCreacionGreaterThan(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> rlIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rlId',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> rlIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rlId',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> rlIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rlId',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> rlIdGreaterThan(
    int? value, {
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> rlIdLessThan(
    int? value, {
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> rlIdBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuId',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuId',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuId',
        value: value,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuMaterno',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuMaterno',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuMaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuMaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuMaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuMaterno',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuMaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuMaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuMaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuMaterno',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuMaterno',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuMaternoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuMaterno',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuNombre',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuNombre',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuPassword',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuPassword',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuPassword',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuPassword',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPasswordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuPassword',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition>
      usuPasswordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuPassword',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuPaterno',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuPaterno',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuPaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuPaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuPaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuPaterno',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuPaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuPaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuPaterno',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuPaterno',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuPaterno',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuPaternoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuPaterno',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuUsuario',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuUsuario',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuUsuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usuUsuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usuUsuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usuUsuario',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'usuUsuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'usuUsuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'usuUsuario',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'usuUsuario',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuUsuario',
        value: '',
      ));
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterFilterCondition> usuUsuarioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'usuUsuario',
        value: '',
      ));
    });
  }
}

extension UsuarioQueryObject
    on QueryBuilder<Usuario, Usuario, QFilterCondition> {}

extension UsuarioQueryLinks
    on QueryBuilder<Usuario, Usuario, QFilterCondition> {}

extension UsuarioQuerySortBy on QueryBuilder<Usuario, Usuario, QSortBy> {
  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByRlId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlId', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByRlIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlId', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuId', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuId', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuMaterno() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuMaterno', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuMaternoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuMaterno', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuNombre', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuNombre', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuPassword', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuPassword', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuPaterno() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuPaterno', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuPaternoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuPaterno', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuUsuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuUsuario', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> sortByUsuUsuarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuUsuario', Sort.desc);
    });
  }
}

extension UsuarioQuerySortThenBy
    on QueryBuilder<Usuario, Usuario, QSortThenBy> {
  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByRlId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlId', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByRlIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rlId', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuId', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuId', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuMaterno() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuMaterno', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuMaternoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuMaterno', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuNombre', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuNombre', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuPassword', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuPassword', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuPaterno() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuPaterno', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuPaternoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuPaterno', Sort.desc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuUsuario() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuUsuario', Sort.asc);
    });
  }

  QueryBuilder<Usuario, Usuario, QAfterSortBy> thenByUsuUsuarioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuUsuario', Sort.desc);
    });
  }
}

extension UsuarioQueryWhereDistinct
    on QueryBuilder<Usuario, Usuario, QDistinct> {
  QueryBuilder<Usuario, Usuario, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByRlId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rlId');
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByUsuId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuId');
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByUsuMaterno(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuMaterno', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByUsuNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuNombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByUsuPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuPassword', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByUsuPaterno(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuPaterno', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Usuario, Usuario, QDistinct> distinctByUsuUsuario(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuUsuario', caseSensitive: caseSensitive);
    });
  }
}

extension UsuarioQueryProperty
    on QueryBuilder<Usuario, Usuario, QQueryProperty> {
  QueryBuilder<Usuario, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Usuario, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Usuario, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Usuario, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Usuario, int?, QQueryOperations> rlIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rlId');
    });
  }

  QueryBuilder<Usuario, int, QQueryOperations> usuIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuId');
    });
  }

  QueryBuilder<Usuario, String?, QQueryOperations> usuMaternoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuMaterno');
    });
  }

  QueryBuilder<Usuario, String?, QQueryOperations> usuNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuNombre');
    });
  }

  QueryBuilder<Usuario, String?, QQueryOperations> usuPasswordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuPassword');
    });
  }

  QueryBuilder<Usuario, String?, QQueryOperations> usuPaternoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuPaterno');
    });
  }

  QueryBuilder<Usuario, String?, QQueryOperations> usuUsuarioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuUsuario');
    });
  }
}

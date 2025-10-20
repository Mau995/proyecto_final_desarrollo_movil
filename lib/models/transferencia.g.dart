// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferencia.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTransferenciaCollection on Isar {
  IsarCollection<Transferencia> get transferencias => this.collection();
}

const TransferenciaSchema = CollectionSchema(
  name: r'Transferencia',
  id: -3277442373049835329,
  properties: {
    r'destinoId': PropertySchema(
      id: 0,
      name: r'destinoId',
      type: IsarType.long,
    ),
    r'destinoTipo': PropertySchema(
      id: 1,
      name: r'destinoTipo',
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
    r'origenId': PropertySchema(
      id: 5,
      name: r'origenId',
      type: IsarType.long,
    ),
    r'origenTipo': PropertySchema(
      id: 6,
      name: r'origenTipo',
      type: IsarType.string,
    ),
    r'transfEstado': PropertySchema(
      id: 7,
      name: r'transfEstado',
      type: IsarType.string,
    ),
    r'transfFecha': PropertySchema(
      id: 8,
      name: r'transfFecha',
      type: IsarType.dateTime,
    ),
    r'transfId': PropertySchema(
      id: 9,
      name: r'transfId',
      type: IsarType.long,
    ),
    r'usuResponsable': PropertySchema(
      id: 10,
      name: r'usuResponsable',
      type: IsarType.long,
    )
  },
  estimateSize: _transferenciaEstimateSize,
  serialize: _transferenciaSerialize,
  deserialize: _transferenciaDeserialize,
  deserializeProp: _transferenciaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _transferenciaGetId,
  getLinks: _transferenciaGetLinks,
  attach: _transferenciaAttach,
  version: '3.1.0+1',
);

int _transferenciaEstimateSize(
  Transferencia object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.destinoTipo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.origenTipo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.transfEstado;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _transferenciaSerialize(
  Transferencia object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.destinoId);
  writer.writeString(offsets[1], object.destinoTipo);
  writer.writeLong(offsets[2], object.estado);
  writer.writeDateTime(offsets[3], object.fxCreacion);
  writer.writeDateTime(offsets[4], object.fxModif);
  writer.writeLong(offsets[5], object.origenId);
  writer.writeString(offsets[6], object.origenTipo);
  writer.writeString(offsets[7], object.transfEstado);
  writer.writeDateTime(offsets[8], object.transfFecha);
  writer.writeLong(offsets[9], object.transfId);
  writer.writeLong(offsets[10], object.usuResponsable);
}

Transferencia _transferenciaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Transferencia();
  object.destinoId = reader.readLongOrNull(offsets[0]);
  object.destinoTipo = reader.readStringOrNull(offsets[1]);
  object.estado = reader.readLongOrNull(offsets[2]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[3]);
  object.fxModif = reader.readDateTimeOrNull(offsets[4]);
  object.id = id;
  object.origenId = reader.readLongOrNull(offsets[5]);
  object.origenTipo = reader.readStringOrNull(offsets[6]);
  object.transfEstado = reader.readStringOrNull(offsets[7]);
  object.transfFecha = reader.readDateTimeOrNull(offsets[8]);
  object.transfId = reader.readLong(offsets[9]);
  object.usuResponsable = reader.readLongOrNull(offsets[10]);
  return object;
}

P _transferenciaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
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
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _transferenciaGetId(Transferencia object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _transferenciaGetLinks(Transferencia object) {
  return [];
}

void _transferenciaAttach(
    IsarCollection<dynamic> col, Id id, Transferencia object) {
  object.id = id;
}

extension TransferenciaQueryWhereSort
    on QueryBuilder<Transferencia, Transferencia, QWhere> {
  QueryBuilder<Transferencia, Transferencia, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TransferenciaQueryWhere
    on QueryBuilder<Transferencia, Transferencia, QWhereClause> {
  QueryBuilder<Transferencia, Transferencia, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<Transferencia, Transferencia, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterWhereClause> idBetween(
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

extension TransferenciaQueryFilter
    on QueryBuilder<Transferencia, Transferencia, QFilterCondition> {
  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'destinoId',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'destinoId',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'destinoId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'destinoId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'destinoId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'destinoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'destinoTipo',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'destinoTipo',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'destinoTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'destinoTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'destinoTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'destinoTipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'destinoTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'destinoTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'destinoTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'destinoTipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'destinoTipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      destinoTipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'destinoTipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      estadoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      fxCreacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      fxModifEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'origenId',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'origenId',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'origenId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'origenId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'origenId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'origenId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'origenTipo',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'origenTipo',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'origenTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'origenTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'origenTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'origenTipo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'origenTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'origenTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'origenTipo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'origenTipo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'origenTipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      origenTipoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'origenTipo',
        value: '',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transfEstado',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transfEstado',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transfEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transfEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transfEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transfEstado',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transfEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transfEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transfEstado',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transfEstado',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transfEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfEstadoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transfEstado',
        value: '',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfFechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transfFecha',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfFechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transfFecha',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfFechaEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transfFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfFechaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transfFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfFechaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transfFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfFechaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transfFecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transfId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transfId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transfId',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      transfIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transfId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      usuResponsableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuResponsable',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      usuResponsableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuResponsable',
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      usuResponsableEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuResponsable',
        value: value,
      ));
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      usuResponsableGreaterThan(
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      usuResponsableLessThan(
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

  QueryBuilder<Transferencia, Transferencia, QAfterFilterCondition>
      usuResponsableBetween(
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

extension TransferenciaQueryObject
    on QueryBuilder<Transferencia, Transferencia, QFilterCondition> {}

extension TransferenciaQueryLinks
    on QueryBuilder<Transferencia, Transferencia, QFilterCondition> {}

extension TransferenciaQuerySortBy
    on QueryBuilder<Transferencia, Transferencia, QSortBy> {
  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByDestinoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destinoId', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByDestinoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destinoId', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByDestinoTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destinoTipo', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByDestinoTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destinoTipo', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByOrigenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origenId', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByOrigenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origenId', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByOrigenTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origenTipo', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByOrigenTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origenTipo', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByTransfEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfEstado', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByTransfEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfEstado', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByTransfFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfFecha', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByTransfFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfFecha', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> sortByTransfId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfId', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByTransfIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfId', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      sortByUsuResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.desc);
    });
  }
}

extension TransferenciaQuerySortThenBy
    on QueryBuilder<Transferencia, Transferencia, QSortThenBy> {
  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByDestinoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destinoId', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByDestinoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destinoId', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByDestinoTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destinoTipo', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByDestinoTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destinoTipo', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByOrigenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origenId', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByOrigenIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origenId', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByOrigenTipo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origenTipo', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByOrigenTipoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'origenTipo', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByTransfEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfEstado', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByTransfEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfEstado', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByTransfFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfFecha', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByTransfFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfFecha', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy> thenByTransfId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfId', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByTransfIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfId', Sort.desc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.asc);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QAfterSortBy>
      thenByUsuResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.desc);
    });
  }
}

extension TransferenciaQueryWhereDistinct
    on QueryBuilder<Transferencia, Transferencia, QDistinct> {
  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByDestinoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'destinoId');
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByDestinoTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'destinoTipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByOrigenId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'origenId');
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByOrigenTipo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'origenTipo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByTransfEstado(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transfEstado', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct>
      distinctByTransfFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transfFecha');
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct> distinctByTransfId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transfId');
    });
  }

  QueryBuilder<Transferencia, Transferencia, QDistinct>
      distinctByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuResponsable');
    });
  }
}

extension TransferenciaQueryProperty
    on QueryBuilder<Transferencia, Transferencia, QQueryProperty> {
  QueryBuilder<Transferencia, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Transferencia, int?, QQueryOperations> destinoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'destinoId');
    });
  }

  QueryBuilder<Transferencia, String?, QQueryOperations> destinoTipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'destinoTipo');
    });
  }

  QueryBuilder<Transferencia, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Transferencia, DateTime?, QQueryOperations>
      fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Transferencia, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Transferencia, int?, QQueryOperations> origenIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'origenId');
    });
  }

  QueryBuilder<Transferencia, String?, QQueryOperations> origenTipoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'origenTipo');
    });
  }

  QueryBuilder<Transferencia, String?, QQueryOperations>
      transfEstadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transfEstado');
    });
  }

  QueryBuilder<Transferencia, DateTime?, QQueryOperations>
      transfFechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transfFecha');
    });
  }

  QueryBuilder<Transferencia, int, QQueryOperations> transfIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transfId');
    });
  }

  QueryBuilder<Transferencia, int?, QQueryOperations> usuResponsableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuResponsable');
    });
  }
}

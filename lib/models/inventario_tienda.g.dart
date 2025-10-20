// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventario_tienda.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInventarioTiendaCollection on Isar {
  IsarCollection<InventarioTienda> get inventarioTiendas => this.collection();
}

const InventarioTiendaSchema = CollectionSchema(
  name: r'InventarioTienda',
  id: -6455554850362888826,
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
    r'invTId': PropertySchema(
      id: 3,
      name: r'invTId',
      type: IsarType.long,
    ),
    r'invTStock': PropertySchema(
      id: 4,
      name: r'invTStock',
      type: IsarType.long,
    ),
    r'prodId': PropertySchema(
      id: 5,
      name: r'prodId',
      type: IsarType.long,
    ),
    r'tiendaId': PropertySchema(
      id: 6,
      name: r'tiendaId',
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
  estimateSize: _inventarioTiendaEstimateSize,
  serialize: _inventarioTiendaSerialize,
  deserialize: _inventarioTiendaDeserialize,
  deserializeProp: _inventarioTiendaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _inventarioTiendaGetId,
  getLinks: _inventarioTiendaGetLinks,
  attach: _inventarioTiendaAttach,
  version: '3.1.0+1',
);

int _inventarioTiendaEstimateSize(
  InventarioTienda object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _inventarioTiendaSerialize(
  InventarioTienda object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.estado);
  writer.writeDateTime(offsets[1], object.fxCreacion);
  writer.writeDateTime(offsets[2], object.fxModif);
  writer.writeLong(offsets[3], object.invTId);
  writer.writeLong(offsets[4], object.invTStock);
  writer.writeLong(offsets[5], object.prodId);
  writer.writeLong(offsets[6], object.tiendaId);
  writer.writeLong(offsets[7], object.usuCreacion);
  writer.writeLong(offsets[8], object.usuModif);
}

InventarioTienda _inventarioTiendaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InventarioTienda();
  object.estado = reader.readLongOrNull(offsets[0]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[1]);
  object.fxModif = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.invTId = reader.readLong(offsets[3]);
  object.invTStock = reader.readLongOrNull(offsets[4]);
  object.prodId = reader.readLongOrNull(offsets[5]);
  object.tiendaId = reader.readLongOrNull(offsets[6]);
  object.usuCreacion = reader.readLongOrNull(offsets[7]);
  object.usuModif = reader.readLongOrNull(offsets[8]);
  return object;
}

P _inventarioTiendaDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
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

Id _inventarioTiendaGetId(InventarioTienda object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _inventarioTiendaGetLinks(InventarioTienda object) {
  return [];
}

void _inventarioTiendaAttach(
    IsarCollection<dynamic> col, Id id, InventarioTienda object) {
  object.id = id;
}

extension InventarioTiendaQueryWhereSort
    on QueryBuilder<InventarioTienda, InventarioTienda, QWhere> {
  QueryBuilder<InventarioTienda, InventarioTienda, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension InventarioTiendaQueryWhere
    on QueryBuilder<InventarioTienda, InventarioTienda, QWhereClause> {
  QueryBuilder<InventarioTienda, InventarioTienda, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterWhereClause>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterWhereClause> idBetween(
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

extension InventarioTiendaQueryFilter
    on QueryBuilder<InventarioTienda, InventarioTienda, QFilterCondition> {
  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      estadoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      fxCreacionEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      fxModifEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invTId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invTId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invTId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invTId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTStockIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'invTStock',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTStockIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'invTStock',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTStockEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invTStock',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTStockGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invTStock',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTStockLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invTStock',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      invTStockBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invTStock',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      prodIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodId',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      prodIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodId',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      prodIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      tiendaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tiendaId',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      tiendaIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tiendaId',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      tiendaIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tiendaId',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      tiendaIdGreaterThan(
    int? value, {
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      tiendaIdLessThan(
    int? value, {
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      tiendaIdBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      usuCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      usuCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      usuCreacionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      usuModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      usuModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
      usuModifEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuModif',
        value: value,
      ));
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterFilterCondition>
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

extension InventarioTiendaQueryObject
    on QueryBuilder<InventarioTienda, InventarioTienda, QFilterCondition> {}

extension InventarioTiendaQueryLinks
    on QueryBuilder<InventarioTienda, InventarioTienda, QFilterCondition> {}

extension InventarioTiendaQuerySortBy
    on QueryBuilder<InventarioTienda, InventarioTienda, QSortBy> {
  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByInvTId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invTId', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByInvTIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invTId', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByInvTStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invTStock', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByInvTStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invTStock', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByTiendaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      sortByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension InventarioTiendaQuerySortThenBy
    on QueryBuilder<InventarioTienda, InventarioTienda, QSortThenBy> {
  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByInvTId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invTId', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByInvTIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invTId', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByInvTStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invTStock', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByInvTStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invTStock', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByTiendaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QAfterSortBy>
      thenByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension InventarioTiendaQueryWhereDistinct
    on QueryBuilder<InventarioTienda, InventarioTienda, QDistinct> {
  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByInvTId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invTId');
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByInvTStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invTStock');
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodId');
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tiendaId');
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuCreacion');
    });
  }

  QueryBuilder<InventarioTienda, InventarioTienda, QDistinct>
      distinctByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuModif');
    });
  }
}

extension InventarioTiendaQueryProperty
    on QueryBuilder<InventarioTienda, InventarioTienda, QQueryProperty> {
  QueryBuilder<InventarioTienda, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<InventarioTienda, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<InventarioTienda, DateTime?, QQueryOperations>
      fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<InventarioTienda, DateTime?, QQueryOperations>
      fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<InventarioTienda, int, QQueryOperations> invTIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invTId');
    });
  }

  QueryBuilder<InventarioTienda, int?, QQueryOperations> invTStockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invTStock');
    });
  }

  QueryBuilder<InventarioTienda, int?, QQueryOperations> prodIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodId');
    });
  }

  QueryBuilder<InventarioTienda, int?, QQueryOperations> tiendaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tiendaId');
    });
  }

  QueryBuilder<InventarioTienda, int?, QQueryOperations> usuCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuCreacion');
    });
  }

  QueryBuilder<InventarioTienda, int?, QQueryOperations> usuModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuModif');
    });
  }
}

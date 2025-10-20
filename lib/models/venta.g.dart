// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venta.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetVentaCollection on Isar {
  IsarCollection<Venta> get ventas => this.collection();
}

const VentaSchema = CollectionSchema(
  name: r'Venta',
  id: -2270150413385075991,
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
    r'tiendaId': PropertySchema(
      id: 3,
      name: r'tiendaId',
      type: IsarType.long,
    ),
    r'usuResponsable': PropertySchema(
      id: 4,
      name: r'usuResponsable',
      type: IsarType.long,
    ),
    r'ventaFecha': PropertySchema(
      id: 5,
      name: r'ventaFecha',
      type: IsarType.dateTime,
    ),
    r'ventaId': PropertySchema(
      id: 6,
      name: r'ventaId',
      type: IsarType.long,
    ),
    r'ventaTotal': PropertySchema(
      id: 7,
      name: r'ventaTotal',
      type: IsarType.double,
    )
  },
  estimateSize: _ventaEstimateSize,
  serialize: _ventaSerialize,
  deserialize: _ventaDeserialize,
  deserializeProp: _ventaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _ventaGetId,
  getLinks: _ventaGetLinks,
  attach: _ventaAttach,
  version: '3.1.0+1',
);

int _ventaEstimateSize(
  Venta object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _ventaSerialize(
  Venta object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.estado);
  writer.writeDateTime(offsets[1], object.fxCreacion);
  writer.writeDateTime(offsets[2], object.fxModif);
  writer.writeLong(offsets[3], object.tiendaId);
  writer.writeLong(offsets[4], object.usuResponsable);
  writer.writeDateTime(offsets[5], object.ventaFecha);
  writer.writeLong(offsets[6], object.ventaId);
  writer.writeDouble(offsets[7], object.ventaTotal);
}

Venta _ventaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Venta();
  object.estado = reader.readLongOrNull(offsets[0]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[1]);
  object.fxModif = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.tiendaId = reader.readLongOrNull(offsets[3]);
  object.usuResponsable = reader.readLongOrNull(offsets[4]);
  object.ventaFecha = reader.readDateTimeOrNull(offsets[5]);
  object.ventaId = reader.readLong(offsets[6]);
  object.ventaTotal = reader.readDoubleOrNull(offsets[7]);
  return object;
}

P _ventaDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _ventaGetId(Venta object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _ventaGetLinks(Venta object) {
  return [];
}

void _ventaAttach(IsarCollection<dynamic> col, Id id, Venta object) {
  object.id = id;
}

extension VentaQueryWhereSort on QueryBuilder<Venta, Venta, QWhere> {
  QueryBuilder<Venta, Venta, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension VentaQueryWhere on QueryBuilder<Venta, Venta, QWhereClause> {
  QueryBuilder<Venta, Venta, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Venta, Venta, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Venta, Venta, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Venta, Venta, QAfterWhereClause> idBetween(
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

extension VentaQueryFilter on QueryBuilder<Venta, Venta, QFilterCondition> {
  QueryBuilder<Venta, Venta, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> estadoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxCreacionGreaterThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> tiendaIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tiendaId',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> tiendaIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tiendaId',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> tiendaIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tiendaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> tiendaIdGreaterThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> tiendaIdLessThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> tiendaIdBetween(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> usuResponsableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuResponsable',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> usuResponsableIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuResponsable',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> usuResponsableEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuResponsable',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> usuResponsableGreaterThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> usuResponsableLessThan(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> usuResponsableBetween(
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

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaFechaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ventaFecha',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaFechaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ventaFecha',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaFechaEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ventaFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaFechaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ventaFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaFechaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ventaFecha',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaFechaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ventaFecha',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ventaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ventaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ventaId',
        value: value,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ventaId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaTotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ventaTotal',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaTotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ventaTotal',
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaTotalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ventaTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaTotalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ventaTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaTotalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ventaTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Venta, Venta, QAfterFilterCondition> ventaTotalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ventaTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension VentaQueryObject on QueryBuilder<Venta, Venta, QFilterCondition> {}

extension VentaQueryLinks on QueryBuilder<Venta, Venta, QFilterCondition> {}

extension VentaQuerySortBy on QueryBuilder<Venta, Venta, QSortBy> {
  QueryBuilder<Venta, Venta, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByTiendaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByUsuResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByVentaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaFecha', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByVentaFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaFecha', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaId', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByVentaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaId', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByVentaTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaTotal', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> sortByVentaTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaTotal', Sort.desc);
    });
  }
}

extension VentaQuerySortThenBy on QueryBuilder<Venta, Venta, QSortThenBy> {
  QueryBuilder<Venta, Venta, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByTiendaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tiendaId', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByUsuResponsableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuResponsable', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByVentaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaFecha', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByVentaFechaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaFecha', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaId', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByVentaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaId', Sort.desc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByVentaTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaTotal', Sort.asc);
    });
  }

  QueryBuilder<Venta, Venta, QAfterSortBy> thenByVentaTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ventaTotal', Sort.desc);
    });
  }
}

extension VentaQueryWhereDistinct on QueryBuilder<Venta, Venta, QDistinct> {
  QueryBuilder<Venta, Venta, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Venta, Venta, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Venta, Venta, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Venta, Venta, QDistinct> distinctByTiendaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tiendaId');
    });
  }

  QueryBuilder<Venta, Venta, QDistinct> distinctByUsuResponsable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuResponsable');
    });
  }

  QueryBuilder<Venta, Venta, QDistinct> distinctByVentaFecha() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ventaFecha');
    });
  }

  QueryBuilder<Venta, Venta, QDistinct> distinctByVentaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ventaId');
    });
  }

  QueryBuilder<Venta, Venta, QDistinct> distinctByVentaTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ventaTotal');
    });
  }
}

extension VentaQueryProperty on QueryBuilder<Venta, Venta, QQueryProperty> {
  QueryBuilder<Venta, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Venta, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Venta, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Venta, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Venta, int?, QQueryOperations> tiendaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tiendaId');
    });
  }

  QueryBuilder<Venta, int?, QQueryOperations> usuResponsableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuResponsable');
    });
  }

  QueryBuilder<Venta, DateTime?, QQueryOperations> ventaFechaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ventaFecha');
    });
  }

  QueryBuilder<Venta, int, QQueryOperations> ventaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ventaId');
    });
  }

  QueryBuilder<Venta, double?, QQueryOperations> ventaTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ventaTotal');
    });
  }
}

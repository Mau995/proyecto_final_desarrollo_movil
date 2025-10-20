// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producto.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductoCollection on Isar {
  IsarCollection<Producto> get productos => this.collection();
}

const ProductoSchema = CollectionSchema(
  name: r'Producto',
  id: -5697193943419826423,
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
    r'prodActivo': PropertySchema(
      id: 3,
      name: r'prodActivo',
      type: IsarType.long,
    ),
    r'prodCategoria': PropertySchema(
      id: 4,
      name: r'prodCategoria',
      type: IsarType.long,
    ),
    r'prodId': PropertySchema(
      id: 5,
      name: r'prodId',
      type: IsarType.long,
    ),
    r'prodMinimoStock': PropertySchema(
      id: 6,
      name: r'prodMinimoStock',
      type: IsarType.long,
    ),
    r'prodNombre': PropertySchema(
      id: 7,
      name: r'prodNombre',
      type: IsarType.string,
    ),
    r'prodPrecioCompra': PropertySchema(
      id: 8,
      name: r'prodPrecioCompra',
      type: IsarType.double,
    ),
    r'prodPrecioVenta': PropertySchema(
      id: 9,
      name: r'prodPrecioVenta',
      type: IsarType.double,
    ),
    r'prodStockGlobal': PropertySchema(
      id: 10,
      name: r'prodStockGlobal',
      type: IsarType.long,
    ),
    r'prodUnidadMedida': PropertySchema(
      id: 11,
      name: r'prodUnidadMedida',
      type: IsarType.string,
    ),
    r'usuCreacion': PropertySchema(
      id: 12,
      name: r'usuCreacion',
      type: IsarType.long,
    ),
    r'usuModif': PropertySchema(
      id: 13,
      name: r'usuModif',
      type: IsarType.long,
    )
  },
  estimateSize: _productoEstimateSize,
  serialize: _productoSerialize,
  deserialize: _productoDeserialize,
  deserializeProp: _productoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _productoGetId,
  getLinks: _productoGetLinks,
  attach: _productoAttach,
  version: '3.1.0+1',
);

int _productoEstimateSize(
  Producto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.prodNombre;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.prodUnidadMedida;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _productoSerialize(
  Producto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.estado);
  writer.writeDateTime(offsets[1], object.fxCreacion);
  writer.writeDateTime(offsets[2], object.fxModif);
  writer.writeLong(offsets[3], object.prodActivo);
  writer.writeLong(offsets[4], object.prodCategoria);
  writer.writeLong(offsets[5], object.prodId);
  writer.writeLong(offsets[6], object.prodMinimoStock);
  writer.writeString(offsets[7], object.prodNombre);
  writer.writeDouble(offsets[8], object.prodPrecioCompra);
  writer.writeDouble(offsets[9], object.prodPrecioVenta);
  writer.writeLong(offsets[10], object.prodStockGlobal);
  writer.writeString(offsets[11], object.prodUnidadMedida);
  writer.writeLong(offsets[12], object.usuCreacion);
  writer.writeLong(offsets[13], object.usuModif);
}

Producto _productoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Producto();
  object.estado = reader.readLongOrNull(offsets[0]);
  object.fxCreacion = reader.readDateTimeOrNull(offsets[1]);
  object.fxModif = reader.readDateTimeOrNull(offsets[2]);
  object.id = id;
  object.prodActivo = reader.readLongOrNull(offsets[3]);
  object.prodCategoria = reader.readLongOrNull(offsets[4]);
  object.prodId = reader.readLong(offsets[5]);
  object.prodMinimoStock = reader.readLongOrNull(offsets[6]);
  object.prodNombre = reader.readStringOrNull(offsets[7]);
  object.prodPrecioCompra = reader.readDoubleOrNull(offsets[8]);
  object.prodPrecioVenta = reader.readDoubleOrNull(offsets[9]);
  object.prodStockGlobal = reader.readLongOrNull(offsets[10]);
  object.prodUnidadMedida = reader.readStringOrNull(offsets[11]);
  object.usuCreacion = reader.readLongOrNull(offsets[12]);
  object.usuModif = reader.readLongOrNull(offsets[13]);
  return object;
}

P _productoDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _productoGetId(Producto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productoGetLinks(Producto object) {
  return [];
}

void _productoAttach(IsarCollection<dynamic> col, Id id, Producto object) {
  object.id = id;
}

extension ProductoQueryWhereSort on QueryBuilder<Producto, Producto, QWhere> {
  QueryBuilder<Producto, Producto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductoQueryWhere on QueryBuilder<Producto, Producto, QWhereClause> {
  QueryBuilder<Producto, Producto, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Producto, Producto, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Producto, Producto, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Producto, Producto, QAfterWhereClause> idBetween(
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

extension ProductoQueryFilter
    on QueryBuilder<Producto, Producto, QFilterCondition> {
  QueryBuilder<Producto, Producto, QAfterFilterCondition> estadoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> estadoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'estado',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> estadoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estado',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> estadoGreaterThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> estadoLessThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> estadoBetween(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      fxCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxCreacion',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxCreacionEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxCreacionGreaterThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxCreacionLessThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxCreacionBetween(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fxModif',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxModifEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fxModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxModifGreaterThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxModifLessThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> fxModifBetween(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodActivoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodActivo',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodActivoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodActivo',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodActivoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodActivo',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodActivoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodActivo',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodActivoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodActivo',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodActivoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodActivo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodCategoriaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodCategoria',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodCategoriaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodCategoria',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodCategoriaEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodCategoria',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodCategoriaGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodCategoria',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodCategoriaLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodCategoria',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodCategoriaBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodCategoria',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodId',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodIdGreaterThan(
    int value, {
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodIdLessThan(
    int value, {
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodMinimoStockIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodMinimoStock',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodMinimoStockIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodMinimoStock',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodMinimoStockEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodMinimoStock',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodMinimoStockGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodMinimoStock',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodMinimoStockLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodMinimoStock',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodMinimoStockBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodMinimoStock',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodNombre',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodNombreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodNombre',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodNombre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prodNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prodNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prodNombre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prodNombre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> prodNombreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodNombreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prodNombre',
        value: '',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioCompraIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodPrecioCompra',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioCompraIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodPrecioCompra',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioCompraEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodPrecioCompra',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioCompraGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodPrecioCompra',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioCompraLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodPrecioCompra',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioCompraBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodPrecioCompra',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioVentaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodPrecioVenta',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioVentaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodPrecioVenta',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioVentaEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodPrecioVenta',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioVentaGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodPrecioVenta',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioVentaLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodPrecioVenta',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodPrecioVentaBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodPrecioVenta',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodStockGlobalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodStockGlobal',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodStockGlobalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodStockGlobal',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodStockGlobalEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodStockGlobal',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodStockGlobalGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodStockGlobal',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodStockGlobalLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodStockGlobal',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodStockGlobalBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodStockGlobal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prodUnidadMedida',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prodUnidadMedida',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodUnidadMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prodUnidadMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prodUnidadMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prodUnidadMedida',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prodUnidadMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prodUnidadMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prodUnidadMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prodUnidadMedida',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prodUnidadMedida',
        value: '',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      prodUnidadMedidaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prodUnidadMedida',
        value: '',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuCreacionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
      usuCreacionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuCreacion',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuCreacionEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuCreacion',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition>
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuCreacionLessThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuCreacionBetween(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuModifIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuModifIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'usuModif',
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuModifEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usuModif',
        value: value,
      ));
    });
  }

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuModifGreaterThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuModifLessThan(
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

  QueryBuilder<Producto, Producto, QAfterFilterCondition> usuModifBetween(
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

extension ProductoQueryObject
    on QueryBuilder<Producto, Producto, QFilterCondition> {}

extension ProductoQueryLinks
    on QueryBuilder<Producto, Producto, QFilterCondition> {}

extension ProductoQuerySortBy on QueryBuilder<Producto, Producto, QSortBy> {
  QueryBuilder<Producto, Producto, QAfterSortBy> sortByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodActivo', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodActivo', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodCategoria', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodCategoria', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdMinimoStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodMinimoStock', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdMinimoStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodMinimoStock', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodNombre', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodNombre', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdPrecioCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodPrecioCompra', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdPrecioCompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodPrecioCompra', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdPrecioVenta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodPrecioVenta', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdPrecioVentaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodPrecioVenta', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdStockGlobal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodStockGlobal', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdStockGlobalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodStockGlobal', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdUnidadMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodUnidadMedida', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByProdUnidadMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodUnidadMedida', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> sortByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension ProductoQuerySortThenBy
    on QueryBuilder<Producto, Producto, QSortThenBy> {
  QueryBuilder<Producto, Producto, QAfterSortBy> thenByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByEstadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estado', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByFxCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxCreacion', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByFxModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fxModif', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodActivo', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdActivoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodActivo', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodCategoria', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdCategoriaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodCategoria', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodId', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdMinimoStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodMinimoStock', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdMinimoStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodMinimoStock', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdNombre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodNombre', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdNombreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodNombre', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdPrecioCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodPrecioCompra', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdPrecioCompraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodPrecioCompra', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdPrecioVenta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodPrecioVenta', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdPrecioVentaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodPrecioVenta', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdStockGlobal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodStockGlobal', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdStockGlobalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodStockGlobal', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdUnidadMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodUnidadMedida', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByProdUnidadMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prodUnidadMedida', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByUsuCreacionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuCreacion', Sort.desc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.asc);
    });
  }

  QueryBuilder<Producto, Producto, QAfterSortBy> thenByUsuModifDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usuModif', Sort.desc);
    });
  }
}

extension ProductoQueryWhereDistinct
    on QueryBuilder<Producto, Producto, QDistinct> {
  QueryBuilder<Producto, Producto, QDistinct> distinctByEstado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estado');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByFxCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxCreacion');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByFxModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fxModif');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdActivo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodActivo');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdCategoria() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodCategoria');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodId');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdMinimoStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodMinimoStock');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdNombre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodNombre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdPrecioCompra() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodPrecioCompra');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdPrecioVenta() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodPrecioVenta');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdStockGlobal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodStockGlobal');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByProdUnidadMedida(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prodUnidadMedida',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByUsuCreacion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuCreacion');
    });
  }

  QueryBuilder<Producto, Producto, QDistinct> distinctByUsuModif() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usuModif');
    });
  }
}

extension ProductoQueryProperty
    on QueryBuilder<Producto, Producto, QQueryProperty> {
  QueryBuilder<Producto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Producto, int?, QQueryOperations> estadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estado');
    });
  }

  QueryBuilder<Producto, DateTime?, QQueryOperations> fxCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxCreacion');
    });
  }

  QueryBuilder<Producto, DateTime?, QQueryOperations> fxModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fxModif');
    });
  }

  QueryBuilder<Producto, int?, QQueryOperations> prodActivoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodActivo');
    });
  }

  QueryBuilder<Producto, int?, QQueryOperations> prodCategoriaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodCategoria');
    });
  }

  QueryBuilder<Producto, int, QQueryOperations> prodIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodId');
    });
  }

  QueryBuilder<Producto, int?, QQueryOperations> prodMinimoStockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodMinimoStock');
    });
  }

  QueryBuilder<Producto, String?, QQueryOperations> prodNombreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodNombre');
    });
  }

  QueryBuilder<Producto, double?, QQueryOperations> prodPrecioCompraProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodPrecioCompra');
    });
  }

  QueryBuilder<Producto, double?, QQueryOperations> prodPrecioVentaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodPrecioVenta');
    });
  }

  QueryBuilder<Producto, int?, QQueryOperations> prodStockGlobalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodStockGlobal');
    });
  }

  QueryBuilder<Producto, String?, QQueryOperations> prodUnidadMedidaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prodUnidadMedida');
    });
  }

  QueryBuilder<Producto, int?, QQueryOperations> usuCreacionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuCreacion');
    });
  }

  QueryBuilder<Producto, int?, QQueryOperations> usuModifProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usuModif');
    });
  }
}

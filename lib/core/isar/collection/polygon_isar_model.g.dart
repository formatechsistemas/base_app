// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_isar_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PolygonIsarModelSchema = Schema(
  name: r'PolygonIsarModel',
  id: 7689848765155071116,
  properties: {
    r'coordinates': PropertySchema(
      id: 0,
      name: r'coordinates',
      type: IsarType.objectList,
      target: r'LatLng',
    )
  },
  estimateSize: _polygonIsarModelEstimateSize,
  serialize: _polygonIsarModelSerialize,
  deserialize: _polygonIsarModelDeserialize,
  deserializeProp: _polygonIsarModelDeserializeProp,
);

int _polygonIsarModelEstimateSize(
  PolygonIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.coordinates;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[LatLng]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += LatLngSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _polygonIsarModelSerialize(
  PolygonIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<LatLng>(
    offsets[0],
    allOffsets,
    LatLngSchema.serialize,
    object.coordinates,
  );
}

PolygonIsarModel _polygonIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PolygonIsarModel(
    coordinates: reader.readObjectList<LatLng>(
      offsets[0],
      LatLngSchema.deserialize,
      allOffsets,
      LatLng(),
    ),
  );
  return object;
}

P _polygonIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<LatLng>(
        offset,
        LatLngSchema.deserialize,
        allOffsets,
        LatLng(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PolygonIsarModelQueryFilter
    on QueryBuilder<PolygonIsarModel, PolygonIsarModel, QFilterCondition> {
  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'coordinates',
      ));
    });
  }

  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'coordinates',
      ));
    });
  }

  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'coordinates',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'coordinates',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'coordinates',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'coordinates',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'coordinates',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'coordinates',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension PolygonIsarModelQueryObject
    on QueryBuilder<PolygonIsarModel, PolygonIsarModel, QFilterCondition> {
  QueryBuilder<PolygonIsarModel, PolygonIsarModel, QAfterFilterCondition>
      coordinatesElement(FilterQuery<LatLng> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'coordinates');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const LatLngSchema = Schema(
  name: r'LatLng',
  id: 1209231805645495583,
  properties: {
    r'latLng': PropertySchema(
      id: 0,
      name: r'latLng',
      type: IsarType.doubleList,
    )
  },
  estimateSize: _latLngEstimateSize,
  serialize: _latLngSerialize,
  deserialize: _latLngDeserialize,
  deserializeProp: _latLngDeserializeProp,
);

int _latLngEstimateSize(
  LatLng object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.latLng;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  return bytesCount;
}

void _latLngSerialize(
  LatLng object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDoubleList(offsets[0], object.latLng);
}

LatLng _latLngDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LatLng(
    latLng: reader.readDoubleList(offsets[0]),
  );
  return object;
}

P _latLngDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LatLngQueryFilter on QueryBuilder<LatLng, LatLng, QFilterCondition> {
  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latLng',
      ));
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latLng',
      ));
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngElementEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latLng',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngElementGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latLng',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngElementLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latLng',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngElementBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latLng',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'latLng',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'latLng',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'latLng',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'latLng',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'latLng',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LatLng, LatLng, QAfterFilterCondition> latLngLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'latLng',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension LatLngQueryObject on QueryBuilder<LatLng, LatLng, QFilterCondition> {}

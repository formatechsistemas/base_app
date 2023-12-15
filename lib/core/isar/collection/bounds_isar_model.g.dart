// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bounds_isar_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const BoundsIsarModelSchema = Schema(
  name: r'BoundsIsarModel',
  id: 3076280441049214327,
  properties: {
    r'bottomLeft': PropertySchema(
      id: 0,
      name: r'bottomLeft',
      type: IsarType.double,
    ),
    r'bottomRight': PropertySchema(
      id: 1,
      name: r'bottomRight',
      type: IsarType.double,
    ),
    r'topLeft': PropertySchema(
      id: 2,
      name: r'topLeft',
      type: IsarType.double,
    ),
    r'topRight': PropertySchema(
      id: 3,
      name: r'topRight',
      type: IsarType.double,
    )
  },
  estimateSize: _boundsIsarModelEstimateSize,
  serialize: _boundsIsarModelSerialize,
  deserialize: _boundsIsarModelDeserialize,
  deserializeProp: _boundsIsarModelDeserializeProp,
);

int _boundsIsarModelEstimateSize(
  BoundsIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _boundsIsarModelSerialize(
  BoundsIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.bottomLeft);
  writer.writeDouble(offsets[1], object.bottomRight);
  writer.writeDouble(offsets[2], object.topLeft);
  writer.writeDouble(offsets[3], object.topRight);
}

BoundsIsarModel _boundsIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BoundsIsarModel(
    bottomLeft: reader.readDoubleOrNull(offsets[0]),
    bottomRight: reader.readDoubleOrNull(offsets[1]),
    topLeft: reader.readDoubleOrNull(offsets[2]),
    topRight: reader.readDoubleOrNull(offsets[3]),
  );
  return object;
}

P _boundsIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension BoundsIsarModelQueryFilter
    on QueryBuilder<BoundsIsarModel, BoundsIsarModel, QFilterCondition> {
  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomLeftIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bottomLeft',
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomLeftIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bottomLeft',
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomLeftEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomLeftGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bottomLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomLeftLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bottomLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomLeftBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bottomLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomRightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bottomRight',
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomRightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bottomRight',
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomRightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomRightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bottomRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomRightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bottomRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      bottomRightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bottomRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topLeftIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'topLeft',
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topLeftIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'topLeft',
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topLeftEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topLeftGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topLeftLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topLeft',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topLeftBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topRightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'topRight',
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topRightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'topRight',
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topRightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topRightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topRightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topRight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BoundsIsarModel, BoundsIsarModel, QAfterFilterCondition>
      topRightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension BoundsIsarModelQueryObject
    on QueryBuilder<BoundsIsarModel, BoundsIsarModel, QFilterCondition> {}

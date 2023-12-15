// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depth_isar_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DepthIsarModelSchema = Schema(
  name: r'DepthIsarModel',
  id: 1179965100668879320,
  properties: {
    r'collected': PropertySchema(
      id: 0,
      name: r'collected',
      type: IsarType.bool,
    ),
    r'depth': PropertySchema(
      id: 1,
      name: r'depth',
      type: IsarType.string,
    ),
    r'hasPhoto': PropertySchema(
      id: 2,
      name: r'hasPhoto',
      type: IsarType.bool,
    )
  },
  estimateSize: _depthIsarModelEstimateSize,
  serialize: _depthIsarModelSerialize,
  deserialize: _depthIsarModelDeserialize,
  deserializeProp: _depthIsarModelDeserializeProp,
);

int _depthIsarModelEstimateSize(
  DepthIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.depth;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _depthIsarModelSerialize(
  DepthIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.collected);
  writer.writeString(offsets[1], object.depth);
  writer.writeBool(offsets[2], object.hasPhoto);
}

DepthIsarModel _depthIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DepthIsarModel(
    collected: reader.readBoolOrNull(offsets[0]),
    depth: reader.readStringOrNull(offsets[1]),
    hasPhoto: reader.readBoolOrNull(offsets[2]),
  );
  return object;
}

P _depthIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DepthIsarModelQueryFilter
    on QueryBuilder<DepthIsarModel, DepthIsarModel, QFilterCondition> {
  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      collectedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'collected',
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      collectedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'collected',
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      collectedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collected',
        value: value,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'depth',
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'depth',
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'depth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'depth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'depth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'depth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'depth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'depth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'depth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'depth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'depth',
        value: '',
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      depthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'depth',
        value: '',
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      hasPhotoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hasPhoto',
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      hasPhotoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hasPhoto',
      ));
    });
  }

  QueryBuilder<DepthIsarModel, DepthIsarModel, QAfterFilterCondition>
      hasPhotoEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hasPhoto',
        value: value,
      ));
    });
  }
}

extension DepthIsarModelQueryObject
    on QueryBuilder<DepthIsarModel, DepthIsarModel, QFilterCondition> {}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plot_isar_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PlotIsarModelSchema = Schema(
  name: r'PlotIsarModel',
  id: -9073758165235125667,
  properties: {
    r'bounds': PropertySchema(
      id: 0,
      name: r'bounds',
      type: IsarType.object,
      target: r'BoundsIsarModel',
    ),
    r'farmName': PropertySchema(
      id: 1,
      name: r'farmName',
      type: IsarType.string,
    ),
    r'ivMaps': PropertySchema(
      id: 2,
      name: r'ivMaps',
      type: IsarType.objectList,
      target: r'OverlayImageIsarModel',
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'producerName': PropertySchema(
      id: 4,
      name: r'producerName',
      type: IsarType.string,
    ),
    r'samples': PropertySchema(
      id: 5,
      name: r'samples',
      type: IsarType.objectList,
      target: r'SampleIsarModel',
    ),
    r'useMaps': PropertySchema(
      id: 6,
      name: r'useMaps',
      type: IsarType.objectList,
      target: r'OverlayImageIsarModel',
    )
  },
  estimateSize: _plotIsarModelEstimateSize,
  serialize: _plotIsarModelSerialize,
  deserialize: _plotIsarModelDeserialize,
  deserializeProp: _plotIsarModelDeserializeProp,
);

int _plotIsarModelEstimateSize(
  PlotIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bounds;
    if (value != null) {
      bytesCount += 3 +
          BoundsIsarModelSchema.estimateSize(
              value, allOffsets[BoundsIsarModel]!, allOffsets);
    }
  }
  {
    final value = object.farmName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.ivMaps;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OverlayImageIsarModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OverlayImageIsarModelSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.producerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.samples;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[SampleIsarModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              SampleIsarModelSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.useMaps;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OverlayImageIsarModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OverlayImageIsarModelSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _plotIsarModelSerialize(
  PlotIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<BoundsIsarModel>(
    offsets[0],
    allOffsets,
    BoundsIsarModelSchema.serialize,
    object.bounds,
  );
  writer.writeString(offsets[1], object.farmName);
  writer.writeObjectList<OverlayImageIsarModel>(
    offsets[2],
    allOffsets,
    OverlayImageIsarModelSchema.serialize,
    object.ivMaps,
  );
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.producerName);
  writer.writeObjectList<SampleIsarModel>(
    offsets[5],
    allOffsets,
    SampleIsarModelSchema.serialize,
    object.samples,
  );
  writer.writeObjectList<OverlayImageIsarModel>(
    offsets[6],
    allOffsets,
    OverlayImageIsarModelSchema.serialize,
    object.useMaps,
  );
}

PlotIsarModel _plotIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlotIsarModel(
    bounds: reader.readObjectOrNull<BoundsIsarModel>(
      offsets[0],
      BoundsIsarModelSchema.deserialize,
      allOffsets,
    ),
    farmName: reader.readStringOrNull(offsets[1]),
    ivMaps: reader.readObjectList<OverlayImageIsarModel>(
      offsets[2],
      OverlayImageIsarModelSchema.deserialize,
      allOffsets,
      OverlayImageIsarModel(),
    ),
    name: reader.readStringOrNull(offsets[3]),
    producerName: reader.readStringOrNull(offsets[4]),
    samples: reader.readObjectList<SampleIsarModel>(
      offsets[5],
      SampleIsarModelSchema.deserialize,
      allOffsets,
      SampleIsarModel(),
    ),
    useMaps: reader.readObjectList<OverlayImageIsarModel>(
      offsets[6],
      OverlayImageIsarModelSchema.deserialize,
      allOffsets,
      OverlayImageIsarModel(),
    ),
  );
  return object;
}

P _plotIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<BoundsIsarModel>(
        offset,
        BoundsIsarModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readObjectList<OverlayImageIsarModel>(
        offset,
        OverlayImageIsarModelSchema.deserialize,
        allOffsets,
        OverlayImageIsarModel(),
      )) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readObjectList<SampleIsarModel>(
        offset,
        SampleIsarModelSchema.deserialize,
        allOffsets,
        SampleIsarModel(),
      )) as P;
    case 6:
      return (reader.readObjectList<OverlayImageIsarModel>(
        offset,
        OverlayImageIsarModelSchema.deserialize,
        allOffsets,
        OverlayImageIsarModel(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PlotIsarModelQueryFilter
    on QueryBuilder<PlotIsarModel, PlotIsarModel, QFilterCondition> {
  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      boundsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bounds',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      boundsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bounds',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'farmName',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'farmName',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'farmName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'farmName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'farmName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'farmName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'farmName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'farmName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'farmName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'farmName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'farmName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      farmNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'farmName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ivMaps',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ivMaps',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ivMaps',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ivMaps',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ivMaps',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ivMaps',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ivMaps',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ivMaps',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'producerName',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'producerName',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'producerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'producerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'producerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'producerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'producerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'producerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'producerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'producerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'producerName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      producerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'producerName',
        value: '',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'samples',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'samples',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'samples',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'samples',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'samples',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'samples',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'samples',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'samples',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'useMaps',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'useMaps',
      ));
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'useMaps',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'useMaps',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'useMaps',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'useMaps',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'useMaps',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'useMaps',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension PlotIsarModelQueryObject
    on QueryBuilder<PlotIsarModel, PlotIsarModel, QFilterCondition> {
  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition> bounds(
      FilterQuery<BoundsIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'bounds');
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      ivMapsElement(FilterQuery<OverlayImageIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'ivMaps');
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      samplesElement(FilterQuery<SampleIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'samples');
    });
  }

  QueryBuilder<PlotIsarModel, PlotIsarModel, QAfterFilterCondition>
      useMapsElement(FilterQuery<OverlayImageIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'useMaps');
    });
  }
}

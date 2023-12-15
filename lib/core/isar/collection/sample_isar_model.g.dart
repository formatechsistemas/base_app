// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_isar_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SampleIsarModelSchema = Schema(
  name: r'SampleIsarModel',
  id: 8925079428983646787,
  properties: {
    r'barcodes': PropertySchema(
      id: 0,
      name: r'barcodes',
      type: IsarType.objectList,
      target: r'CollectionBarcodeIsarModel',
    ),
    r'depth': PropertySchema(
      id: 1,
      name: r'depth',
      type: IsarType.string,
    ),
    r'finishedAt': PropertySchema(
      id: 2,
      name: r'finishedAt',
      type: IsarType.dateTime,
    ),
    r'holes': PropertySchema(
      id: 3,
      name: r'holes',
      type: IsarType.objectList,
      target: r'PolygonIsarModel',
    ),
    r'polygons': PropertySchema(
      id: 4,
      name: r'polygons',
      type: IsarType.objectList,
      target: r'PolygonIsarModel',
    ),
    r'sampleNumber': PropertySchema(
      id: 5,
      name: r'sampleNumber',
      type: IsarType.long,
    ),
    r'startedAt': PropertySchema(
      id: 6,
      name: r'startedAt',
      type: IsarType.dateTime,
    ),
    r'subsamples': PropertySchema(
      id: 7,
      name: r'subsamples',
      type: IsarType.objectList,
      target: r'SubsampleIsarModel',
    ),
    r'uuid': PropertySchema(
      id: 8,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _sampleIsarModelEstimateSize,
  serialize: _sampleIsarModelSerialize,
  deserialize: _sampleIsarModelDeserialize,
  deserializeProp: _sampleIsarModelDeserializeProp,
);

int _sampleIsarModelEstimateSize(
  SampleIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.barcodes;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[CollectionBarcodeIsarModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += CollectionBarcodeIsarModelSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.depth;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.holes;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[PolygonIsarModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              PolygonIsarModelSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.polygons;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[PolygonIsarModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              PolygonIsarModelSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.subsamples;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[SubsampleIsarModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              SubsampleIsarModelSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.uuid;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _sampleIsarModelSerialize(
  SampleIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<CollectionBarcodeIsarModel>(
    offsets[0],
    allOffsets,
    CollectionBarcodeIsarModelSchema.serialize,
    object.barcodes,
  );
  writer.writeString(offsets[1], object.depth);
  writer.writeDateTime(offsets[2], object.finishedAt);
  writer.writeObjectList<PolygonIsarModel>(
    offsets[3],
    allOffsets,
    PolygonIsarModelSchema.serialize,
    object.holes,
  );
  writer.writeObjectList<PolygonIsarModel>(
    offsets[4],
    allOffsets,
    PolygonIsarModelSchema.serialize,
    object.polygons,
  );
  writer.writeLong(offsets[5], object.sampleNumber);
  writer.writeDateTime(offsets[6], object.startedAt);
  writer.writeObjectList<SubsampleIsarModel>(
    offsets[7],
    allOffsets,
    SubsampleIsarModelSchema.serialize,
    object.subsamples,
  );
  writer.writeString(offsets[8], object.uuid);
}

SampleIsarModel _sampleIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SampleIsarModel(
    barcodes: reader.readObjectList<CollectionBarcodeIsarModel>(
      offsets[0],
      CollectionBarcodeIsarModelSchema.deserialize,
      allOffsets,
      CollectionBarcodeIsarModel(),
    ),
    depth: reader.readStringOrNull(offsets[1]),
    finishedAt: reader.readDateTimeOrNull(offsets[2]),
    holes: reader.readObjectList<PolygonIsarModel>(
      offsets[3],
      PolygonIsarModelSchema.deserialize,
      allOffsets,
      PolygonIsarModel(),
    ),
    polygons: reader.readObjectList<PolygonIsarModel>(
      offsets[4],
      PolygonIsarModelSchema.deserialize,
      allOffsets,
      PolygonIsarModel(),
    ),
    sampleNumber: reader.readLongOrNull(offsets[5]),
    startedAt: reader.readDateTimeOrNull(offsets[6]),
    subsamples: reader.readObjectList<SubsampleIsarModel>(
      offsets[7],
      SubsampleIsarModelSchema.deserialize,
      allOffsets,
      SubsampleIsarModel(),
    ),
    uuid: reader.readStringOrNull(offsets[8]),
  );
  return object;
}

P _sampleIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<CollectionBarcodeIsarModel>(
        offset,
        CollectionBarcodeIsarModelSchema.deserialize,
        allOffsets,
        CollectionBarcodeIsarModel(),
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readObjectList<PolygonIsarModel>(
        offset,
        PolygonIsarModelSchema.deserialize,
        allOffsets,
        PolygonIsarModel(),
      )) as P;
    case 4:
      return (reader.readObjectList<PolygonIsarModel>(
        offset,
        PolygonIsarModelSchema.deserialize,
        allOffsets,
        PolygonIsarModel(),
      )) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readObjectList<SubsampleIsarModel>(
        offset,
        SubsampleIsarModelSchema.deserialize,
        allOffsets,
        SubsampleIsarModel(),
      )) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SampleIsarModelQueryFilter
    on QueryBuilder<SampleIsarModel, SampleIsarModel, QFilterCondition> {
  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'barcodes',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'barcodes',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      depthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'depth',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      depthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'depth',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
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

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
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

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
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

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
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

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
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

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
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

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      depthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'depth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      depthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'depth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      depthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'depth',
        value: '',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      depthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'depth',
        value: '',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      finishedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'finishedAt',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      finishedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'finishedAt',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      finishedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finishedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      finishedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finishedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      finishedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finishedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      finishedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finishedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'holes',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'holes',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'polygons',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'polygons',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      sampleNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sampleNumber',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      sampleNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sampleNumber',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      sampleNumberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sampleNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      sampleNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sampleNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      sampleNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sampleNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      sampleNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sampleNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      startedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startedAt',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      startedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startedAt',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      startedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      startedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      startedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      startedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subsamples',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subsamples',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subsamples',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subsamples',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subsamples',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subsamples',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subsamples',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subsamples',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uuid',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension SampleIsarModelQueryObject
    on QueryBuilder<SampleIsarModel, SampleIsarModel, QFilterCondition> {
  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      barcodesElement(FilterQuery<CollectionBarcodeIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'barcodes');
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      holesElement(FilterQuery<PolygonIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'holes');
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      polygonsElement(FilterQuery<PolygonIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'polygons');
    });
  }

  QueryBuilder<SampleIsarModel, SampleIsarModel, QAfterFilterCondition>
      subsamplesElement(FilterQuery<SubsampleIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'subsamples');
    });
  }
}

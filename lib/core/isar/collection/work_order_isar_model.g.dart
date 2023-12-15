// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_isar_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWorkOrderIsarModelCollection on Isar {
  IsarCollection<WorkOrderIsarModel> get workOrderIsarModels =>
      this.collection();
}

const WorkOrderIsarModelSchema = CollectionSchema(
  name: r'WorkOrderIsarModel',
  id: 4458459672086551062,
  properties: {
    r'area': PropertySchema(
      id: 0,
      name: r'area',
      type: IsarType.string,
    ),
    r'assignee': PropertySchema(
      id: 1,
      name: r'assignee',
      type: IsarType.string,
    ),
    r'controleos': PropertySchema(
      id: 2,
      name: r'controleos',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.string,
    ),
    r'lastSync': PropertySchema(
      id: 4,
      name: r'lastSync',
      type: IsarType.dateTime,
    ),
    r'plot': PropertySchema(
      id: 5,
      name: r'plot',
      type: IsarType.object,
      target: r'PlotIsarModel',
    ),
    r'synchronized': PropertySchema(
      id: 6,
      name: r'synchronized',
      type: IsarType.bool,
    )
  },
  estimateSize: _workOrderIsarModelEstimateSize,
  serialize: _workOrderIsarModelSerialize,
  deserialize: _workOrderIsarModelDeserialize,
  deserializeProp: _workOrderIsarModelDeserializeProp,
  idName: r'localId',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'PlotIsarModel': PlotIsarModelSchema,
    r'BoundsIsarModel': BoundsIsarModelSchema,
    r'SampleIsarModel': SampleIsarModelSchema,
    r'PolygonIsarModel': PolygonIsarModelSchema,
    r'LatLng': LatLngSchema,
    r'SubsampleIsarModel': SubsampleIsarModelSchema,
    r'DepthIsarModel': DepthIsarModelSchema,
    r'ImageIsarModel': ImageIsarModelSchema,
    r'CollectionBarcodeIsarModel': CollectionBarcodeIsarModelSchema,
    r'OverlayImageIsarModel': OverlayImageIsarModelSchema
  },
  getId: _workOrderIsarModelGetId,
  getLinks: _workOrderIsarModelGetLinks,
  attach: _workOrderIsarModelAttach,
  version: '3.1.0+1',
);

int _workOrderIsarModelEstimateSize(
  WorkOrderIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.area;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.assignee;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.plot;
    if (value != null) {
      bytesCount += 3 +
          PlotIsarModelSchema.estimateSize(
              value, allOffsets[PlotIsarModel]!, allOffsets);
    }
  }
  return bytesCount;
}

void _workOrderIsarModelSerialize(
  WorkOrderIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.area);
  writer.writeString(offsets[1], object.assignee);
  writer.writeLong(offsets[2], object.controleos);
  writer.writeString(offsets[3], object.id);
  writer.writeDateTime(offsets[4], object.lastSync);
  writer.writeObject<PlotIsarModel>(
    offsets[5],
    allOffsets,
    PlotIsarModelSchema.serialize,
    object.plot,
  );
  writer.writeBool(offsets[6], object.synchronized);
}

WorkOrderIsarModel _workOrderIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WorkOrderIsarModel(
    area: reader.readStringOrNull(offsets[0]),
    assignee: reader.readStringOrNull(offsets[1]),
    controleos: reader.readLongOrNull(offsets[2]),
    id: reader.readStringOrNull(offsets[3]),
    lastSync: reader.readDateTimeOrNull(offsets[4]),
    plot: reader.readObjectOrNull<PlotIsarModel>(
      offsets[5],
      PlotIsarModelSchema.deserialize,
      allOffsets,
    ),
    synchronized: reader.readBoolOrNull(offsets[6]),
  );
  object.localId = id;
  return object;
}

P _workOrderIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<PlotIsarModel>(
        offset,
        PlotIsarModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _workOrderIsarModelGetId(WorkOrderIsarModel object) {
  return object.localId;
}

List<IsarLinkBase<dynamic>> _workOrderIsarModelGetLinks(
    WorkOrderIsarModel object) {
  return [];
}

void _workOrderIsarModelAttach(
    IsarCollection<dynamic> col, Id id, WorkOrderIsarModel object) {
  object.localId = id;
}

extension WorkOrderIsarModelQueryWhereSort
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QWhere> {
  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterWhere>
      anyLocalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WorkOrderIsarModelQueryWhere
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QWhereClause> {
  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterWhereClause>
      localIdEqualTo(Id localId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: localId,
        upper: localId,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterWhereClause>
      localIdNotEqualTo(Id localId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: localId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: localId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: localId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: localId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterWhereClause>
      localIdGreaterThan(Id localId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: localId, includeLower: include),
      );
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterWhereClause>
      localIdLessThan(Id localId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: localId, includeUpper: include),
      );
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterWhereClause>
      localIdBetween(
    Id lowerLocalId,
    Id upperLocalId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerLocalId,
        includeLower: includeLower,
        upper: upperLocalId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WorkOrderIsarModelQueryFilter
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QFilterCondition> {
  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'area',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'area',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'area',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'area',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'area',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'area',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      areaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'area',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assignee',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assignee',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assignee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assignee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assignee',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assignee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assignee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assignee',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assignee',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignee',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      assigneeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assignee',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      controleosIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'controleos',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      controleosIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'controleos',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      controleosEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'controleos',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      controleosGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'controleos',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      controleosLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'controleos',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      controleosBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'controleos',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      lastSyncIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastSync',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      lastSyncIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastSync',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      lastSyncEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastSync',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      lastSyncGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastSync',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      lastSyncLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastSync',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      lastSyncBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastSync',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      localIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      localIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      localIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      localIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      plotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'plot',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      plotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'plot',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      synchronizedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'synchronized',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      synchronizedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'synchronized',
      ));
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      synchronizedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'synchronized',
        value: value,
      ));
    });
  }
}

extension WorkOrderIsarModelQueryObject
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QFilterCondition> {
  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterFilterCondition>
      plot(FilterQuery<PlotIsarModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'plot');
    });
  }
}

extension WorkOrderIsarModelQueryLinks
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QFilterCondition> {}

extension WorkOrderIsarModelQuerySortBy
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QSortBy> {
  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByAssignee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignee', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByAssigneeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignee', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByControleos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'controleos', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByControleosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'controleos', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByLastSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSync', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortByLastSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSync', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortBySynchronized() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synchronized', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      sortBySynchronizedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synchronized', Sort.desc);
    });
  }
}

extension WorkOrderIsarModelQuerySortThenBy
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QSortThenBy> {
  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByArea() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByAreaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'area', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByAssignee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignee', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByAssigneeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignee', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByControleos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'controleos', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByControleosDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'controleos', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByLastSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSync', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByLastSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSync', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByLocalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenByLocalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenBySynchronized() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synchronized', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QAfterSortBy>
      thenBySynchronizedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'synchronized', Sort.desc);
    });
  }
}

extension WorkOrderIsarModelQueryWhereDistinct
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QDistinct> {
  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QDistinct>
      distinctByArea({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'area', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QDistinct>
      distinctByAssignee({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assignee', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QDistinct>
      distinctByControleos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'controleos');
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QDistinct>
      distinctByLastSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastSync');
    });
  }

  QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QDistinct>
      distinctBySynchronized() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'synchronized');
    });
  }
}

extension WorkOrderIsarModelQueryProperty
    on QueryBuilder<WorkOrderIsarModel, WorkOrderIsarModel, QQueryProperty> {
  QueryBuilder<WorkOrderIsarModel, int, QQueryOperations> localIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localId');
    });
  }

  QueryBuilder<WorkOrderIsarModel, String?, QQueryOperations> areaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'area');
    });
  }

  QueryBuilder<WorkOrderIsarModel, String?, QQueryOperations>
      assigneeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assignee');
    });
  }

  QueryBuilder<WorkOrderIsarModel, int?, QQueryOperations>
      controleosProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'controleos');
    });
  }

  QueryBuilder<WorkOrderIsarModel, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WorkOrderIsarModel, DateTime?, QQueryOperations>
      lastSyncProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastSync');
    });
  }

  QueryBuilder<WorkOrderIsarModel, PlotIsarModel?, QQueryOperations>
      plotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plot');
    });
  }

  QueryBuilder<WorkOrderIsarModel, bool?, QQueryOperations>
      synchronizedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'synchronized');
    });
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleModel _$SampleModelFromJson(Map<String, dynamic> json) => SampleModel(
      uuid: json['uuid'] as String,
      sampleNumber: json['sampleNumber'] as int,
      depth: json['depth'] as String,
      polygons: (json['polygons'] as List<dynamic>)
          .map((e) => PolygonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      holes: (json['holes'] as List<dynamic>)
          .map((e) => PolygonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subsamples: (json['subsamples'] as List<dynamic>)
          .map((e) => SubsampleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      barcodes: (json['barcodes'] as List<dynamic>)
          .map(
              (e) => CollectionBarcodeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      startedAt: DateTime.parse(json['startedAt'] as String),
      finishedAt: DateTime.parse(json['finishedAt'] as String),
    );

Map<String, dynamic> _$SampleModelToJson(SampleModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'sampleNumber': instance.sampleNumber,
      'depth': instance.depth,
      'polygons': instance.polygons.map((e) => e.toJson()).toList(),
      'holes': instance.holes.map((e) => e.toJson()).toList(),
      'subsamples': instance.subsamples.map((e) => e.toJson()).toList(),
      'barcodes': instance.barcodes.map((e) => e.toJson()).toList(),
      'startedAt': instance.startedAt.toIso8601String(),
      'finishedAt': instance.finishedAt.toIso8601String(),
    };

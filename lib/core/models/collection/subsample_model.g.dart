// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subsample_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubsampleModel _$SubsampleModelFromJson(Map<String, dynamic> json) =>
    SubsampleModel(
      workOrderId: json['workOrderId'] as String,
      sample: json['sample'] as int,
      plot: json['plot'] as String,
      subsample: json['subsample'] as String,
      uuid: json['uuid'] as String,
      x: json['x'] as num,
      y: json['y'] as num,
      depths: (json['depths'] as List<dynamic>)
          .map((e) => DepthModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: json['comment'] as String?,
      compactedGround: json['compactedGround'] as bool?,
      justification: json['justification'] as String?,
      unexpectedBehavior: json['unexpectedBehavior'] as bool?,
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
    );

Map<String, dynamic> _$SubsampleModelToJson(SubsampleModel instance) =>
    <String, dynamic>{
      'workOrderId': instance.workOrderId,
      'sample': instance.sample,
      'plot': instance.plot,
      'subsample': instance.subsample,
      'uuid': instance.uuid,
      'x': instance.x,
      'y': instance.y,
      'depths': instance.depths.map((e) => e.toJson()).toList(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'comment': instance.comment,
      'compactedGround': instance.compactedGround,
      'justification': instance.justification,
      'unexpectedBehavior': instance.unexpectedBehavior,
      'startedAt': instance.startedAt?.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
    };

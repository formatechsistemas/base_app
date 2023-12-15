// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overlay_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverlayImageModel _$OverlayImageModelFromJson(Map<String, dynamic> json) =>
    OverlayImageModel(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      bytes: (json['bytes'] as List<dynamic>).map((e) => e as int).toList(),
      bounds: BoundsModel.fromJson(json['bounds'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OverlayImageModelToJson(OverlayImageModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'bytes': instance.bytes,
      'bounds': instance.bounds.toJson(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepthModel _$DepthModelFromJson(Map<String, dynamic> json) => DepthModel(
      depth: json['depth'] as String,
      hasPhoto: json['hasPhoto'] as bool,
      collected: json['collected'] as bool? ?? false,
    );

Map<String, dynamic> _$DepthModelToJson(DepthModel instance) =>
    <String, dynamic>{
      'depth': instance.depth,
      'hasPhoto': instance.hasPhoto,
      'collected': instance.collected,
    };

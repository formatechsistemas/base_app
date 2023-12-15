// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bounds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoundsModel _$BoundsModelFromJson(Map<String, dynamic> json) => BoundsModel(
      topLeft: json['topLeft'] as num,
      topRight: json['topRight'] as num,
      bottomLeft: json['bottomLeft'] as num,
      bottomRight: json['bottomRight'] as num,
    );

Map<String, dynamic> _$BoundsModelToJson(BoundsModel instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };

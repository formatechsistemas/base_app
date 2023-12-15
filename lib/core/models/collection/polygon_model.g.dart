// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PolygonModel _$PolygonModelFromJson(Map<String, dynamic> json) => PolygonModel(
      rawCoordinates: (json['rawCoordinates'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as num).toList())
          .toList(),
    );

Map<String, dynamic> _$PolygonModelToJson(PolygonModel instance) =>
    <String, dynamic>{
      'rawCoordinates': instance.rawCoordinates,
    };

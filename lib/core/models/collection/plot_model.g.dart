// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlotModel _$PlotModelFromJson(Map<String, dynamic> json) => PlotModel(
      name: json['name'] as String,
      farmName: json['farmName'] as String,
      producerName: json['producerName'] as String,
      bounds: BoundsModel.fromJson(json['bounds'] as Map<String, dynamic>),
      samples: (json['samples'] as List<dynamic>)
          .map((e) => SampleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ivMaps: (json['ivMaps'] as List<dynamic>)
          .map((e) => OverlayImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      useMaps: (json['useMaps'] as List<dynamic>)
          .map((e) => OverlayImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlotModelToJson(PlotModel instance) => <String, dynamic>{
      'name': instance.name,
      'farmName': instance.farmName,
      'producerName': instance.producerName,
      'bounds': instance.bounds.toJson(),
      'samples': instance.samples.map((e) => e.toJson()).toList(),
      'ivMaps': instance.ivMaps.map((e) => e.toJson()).toList(),
      'useMaps': instance.useMaps.map((e) => e.toJson()).toList(),
    };

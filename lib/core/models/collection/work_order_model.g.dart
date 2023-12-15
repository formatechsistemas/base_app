// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderModel _$WorkOrderModelFromJson(Map<String, dynamic> json) =>
    WorkOrderModel(
      id: json['id'] as String,
      controleos: json['controleos'] as int,
      assignee: json['assignee'] as String,
      plot: PlotModel.fromJson(json['plot'] as Map<String, dynamic>),
      area: json['area'] as String,
      synchronized: json['synchronized'] as bool,
      lastSync: DateTime.parse(json['lastSync'] as String),
    );

Map<String, dynamic> _$WorkOrderModelToJson(WorkOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'controleos': instance.controleos,
      'assignee': instance.assignee,
      'plot': instance.plot.toJson(),
      'area': instance.area,
      'synchronized': instance.synchronized,
      'lastSync': instance.lastSync.toIso8601String(),
    };

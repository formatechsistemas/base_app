import 'package:json_annotation/json_annotation.dart';
import 'plot_model.dart';

part 'work_order_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WorkOrderModel {
  WorkOrderModel({
    required this.id,
    required this.controleos,
    required this.assignee,
    required this.plot,
    required this.area,
    required this.synchronized,
    required this.lastSync,
  });

  String id;
  int controleos;
  String assignee;
  PlotModel plot;
  String area;
  bool synchronized;
  DateTime lastSync;

  factory WorkOrderModel.fromJson(Map<String, dynamic> json) => _$WorkOrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderModelToJson(this);
}

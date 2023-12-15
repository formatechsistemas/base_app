import 'plot_model.dart';

class WorkOrderUpdateModel {
  WorkOrderUpdateModel({
    this.id,
    this.controleos,
    this.assignee,
    this.plot,
    this.area,
    this.synchronized,
    this.lastSync,
  });

  String? id;
  int? controleos;
  String? assignee;
  PlotModel? plot;
  String? area;
  bool? synchronized;
  DateTime? lastSync;
}

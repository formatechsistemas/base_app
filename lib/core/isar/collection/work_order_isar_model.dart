import 'package:isar/isar.dart';

import 'plot_isar_model.dart';
import 'bounds_isar_model.dart';
import 'collection_barcode_isar_model.dart';
import 'sample_isar_model.dart';
import 'subsample_isar_model.dart';
import 'overlay_image_isar_model.dart';
import 'polygon_isar_model.dart';
import 'depth_isar_model.dart';
import 'image_isar_model.dart';

part 'work_order_isar_model.g.dart';

@collection
class WorkOrderIsarModel {
  WorkOrderIsarModel({
    this.id,
    this.controleos,
    this.assignee,
    this.plot,
    this.area,
    this.synchronized,
    this.lastSync,
  });

  Id localId = Isar.autoIncrement;
  String? id;
  int? controleos;
  String? assignee;
  PlotIsarModel? plot;
  String? area;
  bool? synchronized;
  DateTime? lastSync;
}

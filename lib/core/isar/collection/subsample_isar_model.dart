import 'package:isar/isar.dart';
import 'depth_isar_model.dart';
import 'image_isar_model.dart';

part 'subsample_isar_model.g.dart';

@embedded
class SubsampleIsarModel {
  SubsampleIsarModel({
    this.workOrderId,
    this.sample,
    this.plot,
    this.subsample,
    this.uuid,
    this.x,
    this.y,
    this.depths,
    this.images,
    this.comment,
    this.compactedGround,
    this.justification,
    this.unexpectedBehavior,
    this.startedAt,
    this.finishedAt,
  });

  String? workOrderId;
  int? sample;
  String? plot;
  String? subsample;
  String? uuid;
  double? x;
  double? y;
  List<DepthIsarModel>? depths;
  List<ImageIsarModel>? images;
  String? comment;
  bool? compactedGround;
  String? justification;
  bool? unexpectedBehavior;
  DateTime? startedAt;
  DateTime? finishedAt;
}

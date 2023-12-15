import 'package:coleta_solo/core/models/collection/depth_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:latlng/latlng.dart';
import 'image_model.dart';

part 'subsample_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SubsampleModel {
  SubsampleModel({
    required this.workOrderId,
    required this.sample,
    required this.plot,
    required this.subsample,
    required this.uuid,
    required this.x,
    required this.y,
    required this.depths,
    required this.images,
    required this.comment,
    required this.compactedGround,
    required this.justification,
    required this.unexpectedBehavior,
    required this.startedAt,
    required this.finishedAt,
  });

  String workOrderId;
  int sample;
  String plot;
  String subsample;
  String uuid;
  num x;
  num y;
  List<DepthModel> depths;
  List<ImageModel> images;
  String? comment;
  bool? compactedGround;
  String? justification;
  bool? unexpectedBehavior;
  DateTime? startedAt;
  DateTime? finishedAt;

  factory SubsampleModel.fromJson(Map<String, dynamic> json) => _$SubsampleModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubsampleModelToJson(this);

  LatLng get coordinates => LatLng(y.toDouble(), x.toDouble());
}

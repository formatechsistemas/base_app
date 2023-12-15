import 'package:json_annotation/json_annotation.dart';

import 'bounds_model.dart';
import 'overlay_image_model.dart';
import 'sample_model.dart';

part 'plot_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PlotModel {
  PlotModel({
    required this.name,
    required this.farmName,
    required this.producerName,
    required this.bounds,
    required this.samples,
    required this.ivMaps,
    required this.useMaps,
  });

  String name;
  String farmName;
  String producerName;
  BoundsModel bounds;
  List<SampleModel> samples;
  List<OverlayImageModel> ivMaps;
  List<OverlayImageModel> useMaps;

  factory PlotModel.fromJson(Map<String, dynamic> json) => _$PlotModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlotModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'bounds_model.dart';

part 'overlay_image_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OverlayImageModel {
  OverlayImageModel({
    required this.uuid,
    required this.title,
    required this.bytes,
    required this.bounds,
  });

  String uuid;
  String title;
  List<int> bytes;
  BoundsModel bounds;

  factory OverlayImageModel.fromJson(Map<String, dynamic> json) =>
      _$OverlayImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$OverlayImageModelToJson(this);
}

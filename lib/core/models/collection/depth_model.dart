import 'package:json_annotation/json_annotation.dart';

part 'depth_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DepthModel {
  DepthModel({
    required this.depth,
    required this.hasPhoto,
    this.collected = false,
  });

  String depth;
  bool hasPhoto;
  bool collected;

  factory DepthModel.fromJson(Map<String, dynamic> json) => _$DepthModelFromJson(json);

  Map<String, dynamic> toJson() => _$DepthModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'bounds_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BoundsModel {
  BoundsModel({
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
  });

  num topLeft;
  num topRight;
  num bottomLeft;
  num bottomRight;

  factory BoundsModel.fromJson(Map<String, dynamic> json) => _$BoundsModelFromJson(json);

  Map<String, dynamic> toJson() => _$BoundsModelToJson(this);
}

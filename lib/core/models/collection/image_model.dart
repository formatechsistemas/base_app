import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ImageModel {
  ImageModel({
    required this.createdAt,
    required this.bytes,
  });

  DateTime createdAt;
  List<int> bytes;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}

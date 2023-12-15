import 'package:json_annotation/json_annotation.dart';
import 'package:latlng/latlng.dart';

part 'polygon_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PolygonModel {
  PolygonModel({
    required this.rawCoordinates,
  });

  List<List<num>> rawCoordinates;

  factory PolygonModel.fromJson(Map<String, dynamic> json) => _$PolygonModelFromJson(json);

  Map<String, dynamic> toJson() => _$PolygonModelToJson(this);

  List<LatLng> get coordinates =>
      rawCoordinates.map((l) => LatLng(l[1].toDouble(), l[0].toDouble())).toList();
}

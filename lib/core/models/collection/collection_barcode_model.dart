import 'package:json_annotation/json_annotation.dart';

part 'collection_barcode_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CollectionBarcodeModel {
  CollectionBarcodeModel({
    required this.depth,
    required this.barcode,
  });

  String depth;
  String barcode;

  factory CollectionBarcodeModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionBarcodeModelFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionBarcodeModelToJson(this);
}

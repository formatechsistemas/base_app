import 'package:base_app/core/models/collection/polygon_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'collection_barcode_model.dart';
import 'subsample_model.dart';

part 'sample_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SampleModel {
  SampleModel({
    required this.uuid,
    required this.sampleNumber,
    required this.depth,
    required this.polygons,
    required this.holes,
    required this.subsamples,
    required this.barcodes,
    required this.startedAt,
    required this.finishedAt,
  });

  String uuid;
  int sampleNumber;
  String depth;
  List<PolygonModel> polygons;
  List<PolygonModel> holes;
  List<SubsampleModel> subsamples;
  List<CollectionBarcodeModel> barcodes;
  DateTime startedAt;
  DateTime finishedAt;

  factory SampleModel.fromJson(Map<String, dynamic> json) => _$SampleModelFromJson(json);

  Map<String, dynamic> toJson() => _$SampleModelToJson(this);
}

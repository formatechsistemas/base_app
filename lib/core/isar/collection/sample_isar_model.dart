import 'package:isar/isar.dart';

import 'collection_barcode_isar_model.dart';
import 'polygon_isar_model.dart';
import 'subsample_isar_model.dart';

part 'sample_isar_model.g.dart';

@embedded
class SampleIsarModel {
  SampleIsarModel({
    this.uuid,
    this.sampleNumber,
    this.depth,
    this.polygons,
    this.holes,
    this.subsamples,
    this.barcodes,
    this.startedAt,
    this.finishedAt,
  });

  String? uuid;
  int? sampleNumber;
  String? depth;
  List<PolygonIsarModel>? polygons;
  List<PolygonIsarModel>? holes;
  List<SubsampleIsarModel>? subsamples;
  List<CollectionBarcodeIsarModel>? barcodes;
  DateTime? startedAt;
  DateTime? finishedAt;
}

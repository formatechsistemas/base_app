import 'package:isar/isar.dart';

part 'collection_barcode_isar_model.g.dart';

@embedded
class CollectionBarcodeIsarModel {
  CollectionBarcodeIsarModel({
    this.depth,
    this.barcode,
  });

  String? depth;
  String? barcode;
}

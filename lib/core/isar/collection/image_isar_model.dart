import 'package:isar/isar.dart';

part 'image_isar_model.g.dart';

@embedded
class ImageIsarModel {
  ImageIsarModel({
    this.createdAt,
    this.bytes,
  });

  DateTime? createdAt;
  List<int>? bytes;
}

import 'package:isar/isar.dart';

part 'depth_isar_model.g.dart';

@embedded
class DepthIsarModel {
  DepthIsarModel({
    this.depth,
    this.hasPhoto,
    this.collected = false,
  });

  String? depth;
  bool? hasPhoto;
  bool? collected;
}

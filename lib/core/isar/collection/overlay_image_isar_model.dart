import 'package:isar/isar.dart';

import 'bounds_isar_model.dart';

part 'overlay_image_isar_model.g.dart';

@embedded
class OverlayImageIsarModel {
  OverlayImageIsarModel({
    this.uuid,
    this.title,
    this.bytes,
    this.bounds,
  });

  String? uuid;
  String? title;
  List<int>? bytes;
  BoundsIsarModel? bounds;
}

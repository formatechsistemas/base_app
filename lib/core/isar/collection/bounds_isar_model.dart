import 'package:isar/isar.dart';

part 'bounds_isar_model.g.dart';

@embedded
class BoundsIsarModel {
  BoundsIsarModel({
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  });

  double? topLeft;
  double? topRight;
  double? bottomLeft;
  double? bottomRight;
}

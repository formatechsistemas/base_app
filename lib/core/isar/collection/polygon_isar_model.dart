import 'package:isar/isar.dart';

part 'polygon_isar_model.g.dart';

@embedded
class PolygonIsarModel {
  PolygonIsarModel({
    this.coordinates,
  });

  List<LatLng>? coordinates;
}

@embedded
class LatLng {
  LatLng({
    this.latLng,
  });

  List<double>? latLng;
}

import 'package:isar/isar.dart';
import 'bounds_isar_model.dart';
import 'overlay_image_isar_model.dart';
import 'sample_isar_model.dart';

part 'plot_isar_model.g.dart';

@embedded
class PlotIsarModel {
  PlotIsarModel({
    this.name,
    this.farmName,
    this.producerName,
    this.bounds,
    this.samples,
    this.ivMaps,
    this.useMaps,
  });

  String? name;
  String? farmName;
  String? producerName;
  BoundsIsarModel? bounds;
  List<SampleIsarModel>? samples;
  List<OverlayImageIsarModel>? ivMaps;
  List<OverlayImageIsarModel>? useMaps;
}

import 'dart:async';

import 'package:base_app/core/services/controlled_service.dart';
import 'package:get/get.dart';
import 'package:latlng/latlng.dart';

class LocationService extends ControlledService {
  Rx<LatLng>? currentLocation;
  late StreamSubscription locationSubsciption;
  StreamSubscription<LatLng>? trailCollection;

  @override
  void onInit() {
    _listenToLocationChanges();
    super.onInit();
  }

  @override
  onClose() {
    locationSubsciption.cancel();
    trailCollection?.cancel();
    super.onClose();
  }

  _listenToLocationChanges() {
    //TODO: listen to location changes
  }

  void startTrailCollection() {
    final trailCollectionDebounce = 3.seconds;

    trailCollection = currentLocation?.listen((latLng) {
      Timer.periodic(trailCollectionDebounce, (timer) {
        //TODO: save on database
      });
    });
  }

  void pauseTrailCollection() => trailCollection?.pause();
  void resumeTrailCollection() => trailCollection?.resume();
  void stopTrailCollection() => trailCollection?.cancel();

  @override
  Future<void> onDataClean() {
    // TODO: implement onDataClean
    throw UnimplementedError();
  }
}

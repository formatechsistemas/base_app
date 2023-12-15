import 'dart:async';

import 'package:base_app/core/services/controlled_service.dart';
import 'package:get/get.dart';

class ConnectivityService extends ControlledService {
  final isOffline = false.obs;
  late StreamSubscription connectivitySubsciption;

  @override
  void onInit() {
    _listenToConnectivityChanges();
    super.onInit();
  }

  @override
  void onClose() {
    connectivitySubsciption.cancel();
    super.onClose();
  }

  Future<void> reloadData() => isOffline.value ? _initializeOffline() : _initializeOnline();

  Future<void> _initializeOffline() async {
    //TODO: all action from offline initialization
    ControlledService.runOnAppModeInits();
  }

  Future<void> _initializeOnline() async {
    //TODO: all action from online initialization
    ControlledService.runOnAppModeInits();
  }

  void _listenToConnectivityChanges() {
    //TODO: listen to changes
  }

  Future<bool?> isServerOnline() async {
    if (isOffline.isFalse) {
      //TODO: ping server and check connection
    }
    return null;
  }

  @override
  Future<void> onDataClean() {
    // TODO: implement onDataClean
    throw UnimplementedError();
  }
}

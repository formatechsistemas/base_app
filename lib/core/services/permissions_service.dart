import 'dart:async';

import 'package:base_app/core/services/controlled_service.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionsService extends ControlledService {
  final pendingPermissions = <Permission>[].obs;

  final permissionsChecked = Completer();

  static final Set<Permission> _requiredPermissions = {
    Permission.camera,
    Permission.location,
    Permission.locationAlways
  };

  @override
  void onInit() {
    getPendingPermissions();
    super.onInit();
  }

  Future<void> getPendingPermissions() async {
    pendingPermissions.clear();

    for (final permission in _requiredPermissions) {
      final isGranted = await permission.isGranted;
      if (!isGranted) {
        pendingPermissions.add(permission);
      }
    }

    if (!permissionsChecked.isCompleted) {
      permissionsChecked.complete();
    }
  }

  Future<void> askForPendingPermissions() async {
    // ignore: invalid_use_of_protected_member
    await pendingPermissions.value.request();
  }

  @override
  Future<void> onDataClean() async {
    return;
  }
}

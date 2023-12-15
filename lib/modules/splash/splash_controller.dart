import 'dart:async';
import 'package:base_app/core/services/auth_service.dart';
import 'package:base_app/core/services/connectivity_service.dart';
import 'package:base_app/core/services/services_manager.dart';
import 'package:base_app/core/shared/screen_controller.dart';
import 'package:base_app/formatech_run.dart';
import 'package:base_app/routes/app_navigator.dart';
import 'package:base_app/routes/app_routes.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class SplashController extends ScreenController {
  final connectivityService = Get.find<ConnectivityService>();
  bool alreadyInitialized = false;

  @override
  void onInit() {
    onPageOpened();
    super.onInit();
  }

  Future<void> refreshData() async {
    await ServicesManager.cleanData(cleanUserCache: false);
    await connectivityService.reloadData();

    if (Get.currentRoute == AppRoutes.splash) {
      Get.back<void>();
    }
  }

  Future<void> checkAuthAndConnectivityState() async {
    final isAuth = await AuthService.hasAuthenticated;

    final isConnected = await Connectivity().checkConnectivity() != ConnectivityResult.none;

    if (isAuth) {
      if (isConnected) {
        await Get.find<AuthService>().fetchFromServer();
      }

      connectivityService.isOffline.value = !isConnected;
    }
    AppNavigator.openHome();
  }

  Future<void> onPageOpened() async {
    if (!alreadyInitialized) {
      alreadyInitialized = true;

      await FormatechAppRunner.afterAppRunCompleted.future;

      checkAuthAndConnectivityState();

      return;
    }

    await Future<void>.delayed(const Duration(milliseconds: 500));

    if (Get.currentRoute == AppRoutes.splash) {
      Get.back<void>();
    }
  }
}

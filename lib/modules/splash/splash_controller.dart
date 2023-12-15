import 'dart:async';
import 'package:coleta_solo/core/services/auth_service.dart';
import 'package:coleta_solo/core/services/connectivity_service.dart';
import 'package:coleta_solo/core/services/services_manager.dart';
import 'package:coleta_solo/core/shared/screen_controller.dart';
import 'package:coleta_solo/formatech_run.dart';
import 'package:coleta_solo/routes/app_navigator.dart';
import 'package:coleta_solo/routes/app_routes.dart';
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

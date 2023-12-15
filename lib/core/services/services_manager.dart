import 'dart:async';

import 'package:coleta_solo/core/repositories/controlled_repository.dart';
import 'package:coleta_solo/core/repositories/user/user_repository.dart';
import 'package:coleta_solo/core/services/auth_service.dart';
import 'package:coleta_solo/core/services/connectivity_service.dart';
import 'package:coleta_solo/core/services/controlled_service.dart';
import 'package:coleta_solo/core/services/data_initializer_service.dart';
import 'package:coleta_solo/core/services/feature_service.dart';
import 'package:coleta_solo/core/services/location_service.dart';
import 'package:coleta_solo/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class ServicesManager {
  static final wereServicesFirstInitialized = Completer<void>();

  static Future<void> init({bool createNonDeletables = true}) async {
    if (createNonDeletables) {
      Get.put(ConnectivityService());
      Get.put(DataInitializerService());

      // Repositories
      Get.put(UserRepository());

      // Services
      _initDataRelatedServices();
      _initBusinessLogicRelatedServices();

      Get.put(SplashController(), permanent: true);
    }

    if (!wereServicesFirstInitialized.isCompleted) {
      wereServicesFirstInitialized.complete();
    }
  }

  static void _initDataRelatedServices() {
    Get.put(AuthService());
    Get.put(LocationService());
  }

  static void _initBusinessLogicRelatedServices() {
    Get.put(ConnectivityService());
  }

  static Future<void> cleanData({bool cleanUserCache = true}) async {
    await Future.wait([
      ControlledService.cleanServices(),
      if (cleanUserCache) ControlledRepository.cleanUserCache(),
    ]);

    if (cleanUserCache) await FeatureService.cleanCachedFeatureFlags();

    await init(createNonDeletables: false);
  }
}

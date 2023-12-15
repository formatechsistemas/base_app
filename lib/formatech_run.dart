import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bot_toast/bot_toast.dart';
import 'package:camera/camera.dart';
import 'package:coleta_solo/core/network/formatech_dio.dart';
import 'package:coleta_solo/core/services/analytics_service.dart';
import 'package:coleta_solo/core/services/feature_service.dart';
import 'package:coleta_solo/core/services/services_manager.dart';
import 'package:coleta_solo/modules/map/controllers/camera_controller.dart';
import 'package:coleta_solo/routes/app_navigator_observer.dart';
import 'package:coleta_solo/routes/app_routes.dart';
import 'package:coleta_solo/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:timezone/data/latest.dart' as tz;

class FormatechAppRunner {
  static Future<void> run() async {
    return runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      await AnalyticsService.init();

      AnalyticsService.capture('App Initialized');

      //await dotenv.load();
      tz.initializeTimeZones();

      await Future.wait([
        FormatechDio().initialize(),
      ]);

      await ServicesManager.init();

      await Future.wait([
        availableCameras().then((value) => deviceCameras.addAll(value)),
      ]);

      return runApp(const FormatechApp());
    }, (error, stack) async {
      debugPrint('Error initing app $error, the stack was: $stack');
    });
  }

  static Completer<void> afterAppRunCompleted = Completer();
  static Future<void> afterAppRun() async {
    await FeatureService.fetchFeatureFlags();

    if (!afterAppRunCompleted.isCompleted) {
      afterAppRunCompleted.complete();
    }
  }

  static void restart() {
    // Splash runs logout to reset all data
    Get.until((route) => route.settings.name == AppRoutes.home);
    Get.toNamed<void>(AppRoutes.splash);
  }
}

class FormatechApp extends StatefulWidget {
  const FormatechApp({
    super.key,
  });

  @override
  State<FormatechApp> createState() => _FormatechAppState();
}

class _FormatechAppState extends State<FormatechApp> {
  void _onInit(BuildContext context) {
    FormatechAppRunner.afterAppRun();

    final data = MediaQueryData.fromView(View.of(context));
    final windowWidth = data.size.width;
    final windowHeight = data.size.height;
    final screenWidth = min(windowWidth, windowHeight);

    if (screenWidth < 540) {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    } else {
      if (windowHeight > windowWidth) {
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      } else {
        SystemChrome.setPreferredOrientations(
            [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.toThemeData(),
      builder: BotToastInit(),
      onInit: () => _onInit(context),
      navigatorObservers: [
        BotToastNavigatorObserver(),
        AppNavigatorObserver(),
      ],
      defaultTransition: Platform.isIOS ? Transition.rightToLeft : Transition.noTransition,
      transitionDuration: Platform.isIOS ? const Duration(milliseconds: 1) : Duration.zero,
      initialRoute: AppRoutes.splash,
      unknownRoute: AppRoutes.routes.where((element) => element.name == AppRoutes.splash).first,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

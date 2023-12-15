import 'package:coleta_solo/modules/home/home_screen.dart';
import 'package:coleta_solo/modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._();

  static const splash = '/splash';

  static const home = '/home';

  // When creating new routes always remember, if your screen opens a webview, you MUST add that page to
  // AppNavigator _onWebViewHistoryPop, otherwise, the you press back on the webview, it won't return to the native app
  static final routes = <GetPage<dynamic>>[
    GetPage(
      name: splash,
      page: SplashScreen.new,
    ),
    GetPage(
      name: home,
      page: HomeScreen.new,
    ),
  ];

  static GetPage<T> _animatedPage<T>({
    required String name,
    required Widget Function() page,
  }) {
    return GetPage<T>(
      name: name,
      page: page,
      transitionDuration: const Duration(milliseconds: 200),
      transition: Transition.rightToLeft,
    );
  }
}

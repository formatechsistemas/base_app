import 'package:base_app/core/services/feature_service.dart';
import 'package:base_app/routes/app_navigator.dart';
import 'package:flutter/material.dart';

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (FeatureService.showUpdateAppBlock.value) return;
    AppNavigator.nativePopRoute(route);
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (FeatureService.showUpdateAppBlock.value) return;

    AppNavigator.nativePushRoute(route);

    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (FeatureService.showUpdateAppBlock.value) return;
    if (oldRoute != null) {
      AppNavigator.nativePopRoute(oldRoute);
    }

    if (newRoute != null) {
      AppNavigator.nativePushRoute(newRoute);
    }

    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}

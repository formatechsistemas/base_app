import 'package:coleta_solo/core/flavors.dart';
import 'package:coleta_solo/routes/app_routes.dart';
import 'package:coleta_solo/widgets/shared/controlled_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoute {
  AppRoute({
    required this.route,
    this.query,
  });

  String route;
  String? query;
}

class RouteChangeNotifier extends ChangeNotifier {
  void _notifyListeners() {
    notifyListeners();
  }
}

/// Service that handles navigation between native and webview routes
///
/// It works by keeping track of the routes that the user visited
/// (both webview and native) and automatically switches between both.
/// Closing and reopening routes.
///
/// For this to work, all screens should extend from
/// `ControlledScreen` instead of `GetView`.
abstract class AppNavigator {
  static final _routeStack = <AppRoute>[];
  static bool isPoppingNativePages = false;

  static final routeChangeNotifier = RouteChangeNotifier();

  static final Map<String, ControlledScreen> _controlledScreenPerRoute = {};
  static final Map<String, int> _activeRoutesPerController = {};

  /// Get the current route name
  static String? currentRouteName() => _routeStack.isNotEmpty ? _routeStack.last.route : null;

  /// Get the current route
  static AppRoute? currentRoute() => _routeStack.isNotEmpty ? _routeStack.last : null;

  static List<AppRoute> get appRoutes => _routeStack;

  /// Saves the [controlledScreen] for [route]
  ///
  /// This must be called ONLY by `ControlledScreen`
  static void addControlledScreenOfRoute(String route, ControlledScreen controlledScreen) {
    _controlledScreenPerRoute[route] = controlledScreen;
  }

  /// Function that is called when a native page in popped
  ///
  /// This must be called ONLY by `AppNavigatorObserver`
  static Future<void> nativePopRoute(Route<dynamic> route) async {
    if (route.settings.name == null || isPoppingNativePages) {
      return;
    }

    F.printDev('Navigator: native POP ${route.settings.name}');

    if (_routeStack.isNotEmpty) {
      _routeStack.removeLast();
    }

    routeChangeNotifier._notifyListeners();
  }

  /// Function that is called when a native page in pushed
  ///
  /// This must be called ONLY by `AppNavigatorObserver`
  static void nativePushRoute(Route<dynamic> route) {
    if (route.settings.name == null) {
      return;
    }

    F.printDev('Navigator: native PUSH ${route.settings.name}');

    _routeStack.add(AppRoute(route: route.settings.name!));

    routeChangeNotifier._notifyListeners();
  }

  /// Removes the [ControlledScreen] for [route]
  ///
  /// This must be called ONLY by `ControlledScreen`
  static void removeControlledScreenOfRoute(String route) {
    _controlledScreenPerRoute.remove(route);
  }

  /// Increase a controller usage in some page
  ///
  /// This must be called ONLY by `ControlledScreen`
  static void increaseControllerUsage(String key) {
    final count = _activeRoutesPerController[key];

    if (count == null) {
      _activeRoutesPerController[key] = 1;
    } else {
      _activeRoutesPerController[key] = count + 1;
    }
  }

  /// Decrease and remove a controller usage
  ///
  /// This must be called ONLY by `ControlledScreen`
  static int decreaseAndMaybeRemoveControllerUsage(String key) {
    final count = _activeRoutesPerController[key]!;

    if (count == 1) {
      _activeRoutesPerController.remove(key);
      return 0;
    } else {
      _activeRoutesPerController[key] = count - 1;
      return _activeRoutesPerController[key]!;
    }
  }

  /// Sends a refresh event to the current native page
  static void sendRefreshToCurrentNativePage() {
    final currentRoute = _routeStack.last.route;
    final controller = _controlledScreenPerRoute[currentRoute];

    if (controller != null) {
      F.printDev("Navigator/Refresh: Send refresh event to '$currentRoute' ControlledScreen");
      controller.onRefreshAfterBackgrounded();
    } else {
      F.printDev(
          "Navigator/Refresh: Refresh event ignored for '$currentRoute', since it doesn't extends ControlledScreen");
    }
  }

  /// Helper to close all dialogs, modals and popups.
  static void closeAllNonNamedRoutes() {
    Get.until((route) => route.settings.name != null);
  }

  /// Opens the home page
  static Future<void> openHome() async {
    return Get.toNamed<void>(AppRoutes.home);
  }
}

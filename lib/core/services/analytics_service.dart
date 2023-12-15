import 'dart:async';
import 'dart:io';

import 'package:coleta_solo/core/extensions/date_time_extensions.dart';
import 'package:coleta_solo/core/extensions/int_extensions.dart';
import 'package:coleta_solo/core/flavors.dart';
import 'package:coleta_solo/core/services/auth_service.dart';
import 'package:coleta_solo/core/utils/string_utils.dart';
import 'package:coleta_solo/routes/app_navigator.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

enum AnalyticsLogLevel { info, error, warning }

/// Wrapper around Posthog to simply its use
class AnalyticsService {
  static const eventKey = 'NavigationKey';
  static void onWebviewScreenPush(String enteredRoute) {
    groupedCapture('Enter webview page: $enteredRoute', groupName: eventKey);
  }

  static void onWebviewScreenPop(String leavedRoute) {
    groupedCapture('Leave webview page: $leavedRoute', groupName: eventKey);
  }

  static void onNativeScreenPush(String enteredRoute) {
    groupedCapture('Enter native page: $enteredRoute', groupName: eventKey);
  }

  static void onNativeScreenPop(String leavedRoute) {
    groupedCapture('Leave native page: $leavedRoute', groupName: eventKey);
  }

  static String? get _currentScreen => AppNavigator.currentRouteName();

  static String? _lastEventName;
  static late DateTime _lastEventSendAt;
  static String? _deviceId;

  static bool isAnalyticsEnabled() => F.isProd;

  /// Captures a text field change event with [name]
  static void captureTextFieldChange(String name) {
    if (_lastEventName == name) {
      final timeSinceLastEvent = _lastEventSendAt.inSeconds;

      if (timeSinceLastEvent.inMinutes < 1) {
        return;
      }
    }

    _capture(name, fromTextFieldChange: true);
  }

  static void onPopupOpen(String analyticsKey) {
    _capture('Open popup: $analyticsKey');
  }

  static Future<String?> _findDeviceId() async {
    try {
      return await FlutterUdid.udid;
    } catch (error, stackTrace) {
      F.printDev(error);
      F.printDev(stackTrace);
      return null;
    }
  }

  /// Used to created a wrapper around the app
  /// to catch errors and analytics data
  static Future<void> init() => Future.wait<void>([
        Posthog().enable(),
        _findDeviceId().then((value) => _deviceId = value),
      ]);

  /// Reports an error to analytics services
  static Future<void> reportError(Object exception, StackTrace stackTrace, String description,
      {Map<String, String>? otherExtras, bool isNetworkError = false}) async {
    if (F.isTest) {
      // ignore: only_throw_errors
      throw exception;
    }

    if (!isAnalyticsEnabled()) {
      if (Platform.isAndroid) {
        F.printDev('\u001B[31m-- ERROR --');
        F.printDev('\u001B[31m $exception');

        final stackTraceLines = stackTrace.toString().split('\n');
        for (final line in stackTraceLines) {
          F.printDev('\u001B[31m $line');
        }
      } else {
        F.printDev('🛑🛑🛑🛑🛑 ERROR 🛑🛑🛑🛑🛑');
        F.printDev(exception);
        F.printDev(stackTrace);
      }

      return;
    }
  }

  static void _capture(
    String name, {
    Map<String, dynamic>? props,
    bool fromTextFieldChange = false,
  }) {
    late Map<String, dynamic> properties;

    if (props == null) {
      properties = <String, dynamic>{
        r'$screen_name': _currentScreen,
        'unique_device_id': _deviceId,
      };
    } else {
      properties = props;
      properties[r'$screen_name'] = _currentScreen;
      properties['unique_device_id'] = _deviceId;
    }

    F.printDev("Analytics: Capture '$name'. Props: $props");

    _lastEventName = name;
    _lastEventSendAt = DateTime.now();

    if (!isAnalyticsEnabled()) {
      return;
    }

    Posthog().screen(screenName: 'HomeScreen');
    Posthog().capture(eventName: name, properties: properties);
  }

  static final _groupedEventTimers = <String, Timer?>{};
  static final _groupedEvents = <String, List<String>>{};
  static const _groupedEventMaxInterval = Duration(seconds: 20);

  static void groupedCapture(String name, {String groupName = ''}) {
    final now = DateTime.now();
    _groupedEvents[groupName] ??= <String>[];
    _groupedEvents[groupName]!.add('$now - $name');

    _groupedEventTimers[groupName] ??= Timer(_groupedEventMaxInterval, () {
      capture('Grouped event${groupName.isNotEmpty ? ' - $groupName' : ''}', <String, dynamic>{
        'events': _groupedEvents[groupName],
      });

      _groupedEvents[groupName]?.clear();
      _groupedEventTimers.remove(groupName);
    });
  }

  /// Captures a [name] event with [props]
  static void capture(String name, [Map<String, dynamic>? props]) {
    _capture(name, props: props);
  }

  static void identifyUserIfLoggedIn() {
    if (AuthService.hasLoggedIn) {
      identifyUser();
    }
  }

  /// Called to identify the user to save in analytic services
  static void identifyUser() {
    if (!isAnalyticsEnabled()) {
      return;
    }

    var profile = 'error';
    var modules = 'error';

    final userProfile = AuthService.loggedUser;

    if (userProfile != null) {
      final userProfileName = userProfile.name;

      if (userProfileName == 'TRACTIAN-SUPER-ADMIN') {
        profile = 'SuperAdmin';
        modules = 'All';
      } else {
        final profileName = userProfileName.replaceAll(RegExp('TRACTIAN|CMMS|MONITORING|-'), '');

        profile = StringUtils.capitalize(profileName.isEmpty ? 'Full' : profileName.toLowerCase());

        if (userProfileName.contains('CMMS') && userProfileName.contains('MONITORING')) {
          modules = 'All';
        } else {
          modules = userProfileName.contains('CMMS') ? 'CMMS' : 'Monitoring';
        }
      }
    }

    final extraInfo = <String, Object?>{
      'unique_device_id': _deviceId,
      'profile': profile,
      'modules': modules
    };

    Posthog().identify(
      userId: userProfile?.id ?? 'unknown',
      properties: <String, dynamic>{
        'name': userProfile?.name,
        'email': userProfile?.email,
        ...extraInfo
      },
    );
  }
}

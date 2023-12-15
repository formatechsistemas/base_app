import 'package:flutter/services.dart';
import 'package:open_store/open_store.dart';

class AppUtils {
  static Future<void> openStore() => OpenStore.instance.open(
        appStoreId: '1590498655',
        androidAppBundleId: 'com.coleta_solo',
      );

  /// Closes the app
  static Future<void> close() => SystemChannels.platform.invokeMethod('SystemNavigator.pop');

  static Future<T> delayUntilNextMicroTask<T>(Future<T> Function() callback) =>
      Future.delayed(Duration.zero, callback);
}

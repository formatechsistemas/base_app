import 'dart:io';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class FeatureUtil {
  static Future<Map<String, dynamic>> getVersionDetails() async {
    final packageInfo = await PackageInfo.fromPlatform();

    final appName = packageInfo.appName;
    final packageName = packageInfo.packageName;
    final version = packageInfo.version;
    final buildNumber = packageInfo.buildNumber;

    late bool cameraPermission;
    late bool photosPermission;
    late bool notificationPermission;
    late bool storagePermission;

    await Future.wait([
      Permission.camera.status.then((res) => cameraPermission = res.isGranted),
      Permission.photos.status.then((res) => photosPermission = res.isGranted),
      Permission.notification.status.then((res) => notificationPermission = res.isGranted),
      Permission.storage.status.then((res) => storagePermission = res.isGranted)
    ]);

    return {
      'appName': appName,
      'packageName': packageName,
      'version': version,
      'buildNumber': buildNumber,
      'isAndroid': Platform.isAndroid,
      'isIos': Platform.isIOS,
      'permissions': {
        'camera': cameraPermission,
        'photos': photosPermission,
        'notification': notificationPermission,
        'storage': storagePermission,
      },
      'appFeatures': {
        'nativeFilePicker': cameraPermission || photosPermission || storagePermission,
      }
    };
  }
}

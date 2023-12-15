import 'dart:convert';
import 'package:base_app/core/flavors.dart';
import 'package:base_app/core/services/auth_service.dart';
import 'package:base_app/core/utils/feature_util.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FeatureService {
  const FeatureService._();

  static bool hasLoadedRemoteUserFeatures = false;

  static const _showUpdateAppWarningKey = 'show_update_app_warning';
  static bool _wasUpdateAppWarningShown = false;

  static const _showUpdateAppBlockKey = 'show_update_app_block';
  static final showUpdateAppBlock = false.obs;

  static const _hasOfflineModeKey = 'has_offline_mode';
  static bool _hasOfflineMode = false;
  static bool get hasOfflineMode => _hasOfflineMode;

  static Future<void> fetchFeatureFlags() async {
    final isConnected = await Connectivity().checkConnectivity();

    final features =
        await (isConnected != ConnectivityResult.none ? _onlineFetch() : _offlineFetch());

    if (features == null) return;

    updateFeatureFlags(features);
  }

  /// This is not in a Repository because repositories depend on the fact that we have or not
  /// the offline feature.
  static Future<Map<String, bool>?> _offlineFetch() async {
    final prefs = await SharedPreferences.getInstance();

    final featuresEncoded = prefs.getString(_featurePrefsKey);

    if (featuresEncoded == null) return null;

    try {
      final res = jsonDecode(featuresEncoded) as Map<String, dynamic>;
      return Map<String, bool>.from(res);
    } catch (error, _) {
      return null;
    }
  }

  static Future<Map<String, bool>?> _onlineFetch() async {
    final userId = Get.find<AuthService>().getUserId();

    final versionDetails = await FeatureUtil.getVersionDetails();

    final featureDio = Dio(
      BaseOptions(
        baseUrl: F.baseApiURL,
        queryParameters: versionDetails,
      ),
    );
    try {
      final res = await featureDio
          .get<Map<String, dynamic>>('/users${userId != null ? '/$userId' : ''}/app-feature-rules');

      if (res.data == null) return null;
      final features = Map<String, bool>.from(res.data!);

      if (userId != null) {
        hasLoadedRemoteUserFeatures = true;
      }

      cacheFeatures(
        features: features,
        userId: userId,
      );
      return features;
    } catch (error, _) {
      return _offlineFetch();
    }
  }

  static const _featurePrefsKey = 'availableFeaturesCache';

  static Future<bool> cacheFeatures({
    required Map<String, bool> features,
    String? userId,
    bool? fromWebView,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      final featuresEncoded = jsonEncode(features);
      prefs.setString(_featurePrefsKey, featuresEncoded);
      return true;
    } catch (error, _) {
      return false;
    }
  }

  static Future<void> cleanCachedFeatureFlags() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(_featurePrefsKey);

    hasLoadedRemoteUserFeatures = false;
  }

  static void updateFeatureFlags(Map<String, bool> features) {
    final updateAppWarning = features[_showUpdateAppWarningKey] ?? false;
    if (updateAppWarning && !_wasUpdateAppWarningShown) {
      _wasUpdateAppWarningShown = true;
      //TODO: implements update warning
      /* Get.find<DataInitializerService>().hasAppInitialized.future.then((_) => Future.delayed(
          const Duration(milliseconds: 300), () => UpdateAvailableModal.invoke(Get.context!))); */
    }

    final updateAppBlock = features[_showUpdateAppBlockKey] ?? false;
    showUpdateAppBlock.value = updateAppBlock;

    final offlineMode = features[_hasOfflineModeKey] ?? false;
    _hasOfflineMode = offlineMode;
  }
}

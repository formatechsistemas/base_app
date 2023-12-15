import 'dart:async';

import 'package:coleta_solo/core/utils/api_utils.dart';
import 'package:coleta_solo/core/services/connectivity_service.dart';
import 'package:get/get.dart';

mixin CacheLoader {
  static void allowOnlineCacheLoads() {
    if (!_allowOnlineCacheLoads.isCompleted) {
      _allowOnlineCacheLoads.complete();
    }
  }

  static void handleOfflineReload() {
    if (_allowOnlineCacheLoads.isCompleted) {
      _allowOnlineCacheLoads = Completer<void>();
    }
  }

  static var _allowOnlineCacheLoads = Completer<void>();

  Future<ApiResponse<T>> loadCache<T>(Future<SuccessApiResponse<T>> Function() cacheLoader) async {
    try {
      if (Get.find<ConnectivityService>().isOffline.isFalse) {
        await _allowOnlineCacheLoads.future;
      }

      final result = await cacheLoader();

      return ApiResponse.success(result, null);
    } catch (error, _) {
      return ApiResponse.error(error, null);
    }
  }
}

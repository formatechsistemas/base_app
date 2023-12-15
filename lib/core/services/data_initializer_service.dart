import 'dart:async';

import 'package:coleta_solo/core/repositories/cache_loader.dart';
import 'package:coleta_solo/core/repositories/controlled_repository.dart';
import 'package:coleta_solo/core/services/auth_service.dart';
import 'package:coleta_solo/core/services/controlled_service.dart';
import 'package:coleta_solo/core/services/feature_service.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DataInitializerService extends ControlledService {
  final hasAppInitialized = Completer<void>();
  Completer<void> hasLoadedInitialData = Completer()..complete();
  DateTime? lastOnlineInit;

  Future<void> onLogin() async {
    await FeatureService.fetchFeatureFlags();
    await Future.wait([
      Get.find<DataInitializerService>().initializeOnline(),
    ]);

    AuthService.hasLoggedOut = false;
  }

  Future<void> initializeOffline() => Future.wait(_dataRepositories.map((e) => e.reload()));

  Future<void> initializeOnline({CancelToken? cancelToken}) => Future.wait([
        _loadDataNecessaryForOnlineModeToOperate(cancelToken: cancelToken),
        _loadDataToUpdateOfflineCache(cancelToken: cancelToken),
      ]).then((_) => lastOnlineInit = DateTime.now());

  Future<void> _checkAndReloadInitialData({
    required List<ControlledDataService> dataRepositories,
    CancelToken? cancelToken,
  }) async {
    while (true) {
      final hasError = dataRepositories.any((repo) => repo.hasError);

      if (!hasError) {
        break;
      }

      if (hasError) {
        final authService = Get.find<AuthService>();
        if (authService.getUserId() == null) {
          return;
        }

        await Future.wait(
          dataRepositories
              .map((repo) => repo.hasError ? repo.load(cancelToken: cancelToken) : null)
              .whereNotNull(),
        );
      }
    }
  }

  List<ControlledDataService> get _dataRepositories => <ControlledDataService>[];

  Future<void> _loadDataNecessaryForOnlineModeToOperate({CancelToken? cancelToken}) async {
    if (!hasLoadedInitialData.isCompleted) {
      return;
    }

    final dataRepositories = _dataRepositories;

    hasLoadedInitialData = Completer();

    await Future.wait(
      dataRepositories.map((repo) => repo.load(cancelToken: cancelToken)),
    );

    if (!(cancelToken?.isCancelled ?? false)) {
      await _checkAndReloadInitialData(
        dataRepositories: dataRepositories,
        cancelToken: cancelToken,
      );
    }

    hasLoadedInitialData.complete();
  }

  Future<void> _loadDataToUpdateOfflineCache({CancelToken? cancelToken}) async {
    CacheLoader.handleOfflineReload();
    await ControlledRepository.loadAllDataToCache().then((_) {
      CacheLoader.allowOnlineCacheLoads();
    });
  }

  @override
  Future<void> onDataClean() async {
    hasLoadedInitialData = Completer()..complete();
  }
}

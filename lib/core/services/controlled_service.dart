import 'dart:async';

import 'package:coleta_solo/core/models/shared/errors/cache_error.dart';
import 'package:coleta_solo/core/models/shared/identifiable.dart';
import 'package:coleta_solo/core/models/shared/model_with_id_service.dart';
import 'package:coleta_solo/core/utils/api_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: implementation_imports
import 'package:collection/src/iterable_extensions.dart';

/// Get controller that don't interact with UI must extends this class instead
/// of `GetxController` or `GetxService`.
///
/// This widget handles the cleanup of data when logging out.
abstract class ControlledService extends GetxService {
  static final _activeServices = <ControlledService>{};
  static bool _hasOnAppInitRan = false;

  static Future<void> cleanServices() =>
      Future.wait(_activeServices.map((service) => service.onDataClean()));

  static void runOnAppModeInits() {
    if (_hasOnAppInitRan) return;
    for (final service in _activeServices) {
      service.onAppModeInit();
    }
    _hasOnAppInitRan = true;
  }

  /// Is executed on [ControlledService.cleanServices] and must clean all data
  Future<void> onDataClean();

  @override
  void onInit() {
    _activeServices.add(this);
    if (_hasOnAppInitRan) onAppModeInit();
    super.onInit();
  }

  /// Is executed when the app enters on offline or online mode (After Auth and basic data loading)
  void onAppModeInit() {}

  @override
  void onClose() {
    _activeServices.remove(this);
    super.onClose();
  }
}

abstract class ControlledDataService extends ControlledService {
  final error = Rx<Object?>(null);
  final loading = false.obs;
  final wasCacheEmpty = false.obs;
  bool hadFirstLoad = false;

  CancelToken? _lastRequestCancelToken;

  void handleResponse<T>(ApiResponse<T> response, void Function(T?) dataUpdater) {
    T? updatedValue;

    if (response.hasError()) {
      final curError = response.error;
      if (curError is CacheError && curError.type == CacheErrorType.noLocalDataFound) {
        wasCacheEmpty.value = true;
      } else {
        error.value = response.error;
      }
    } else {
      updatedValue = response.data;
    }

    dataUpdater(updatedValue);
    loading.value = false;
  }

  bool get hasError => error.value != null;

  @protected
  Future<void> fetchData({CancelToken cancelToken});

  Future<void> load({CancelToken? cancelToken}) async {
    if (loading.isTrue && !_ignoreNextLoading) return;
    _ignoreNextLoading = false;

    final newCancelToken = cancelToken ?? CancelToken();

    _lastRequestCancelToken = newCancelToken;

    try {
      await fetchData(cancelToken: newCancelToken);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return;
      }
      rethrow;
    }
  }

  Future<void> loadIfNeeded({CancelToken? cancelToken}) async {
    if (!hadFirstLoad || hasError) return load(cancelToken: cancelToken);
  }

  bool _ignoreNextLoading = false;
  Future<void> reload({CancelToken? cancelToken}) async {
    _lastRequestCancelToken?.cancel();
    _ignoreNextLoading = true;
    return load(cancelToken: cancelToken);
  }
}

abstract class ControlledIdentifiableDataService<T extends Identifiable>
    extends ControlledDataService implements ModelWithIdService<T> {
  final data = <String, T>{}.obs;

  Future<void> handleLoad({
    required Future<ApiResponse<List<T>>> Function({CancelToken? cancelToken}) loader,
    required CancelToken? cancelToken,
    void Function(List<T>?)? handleBeforeLoadEnd,
    int Function(T, T)? sortingCompareCriteria,
    List<T> Function(List<T>)? transformationBeforeListAssign,
  }) async {
    if (loading.isTrue && !hasError) return;

    loading.value = true;
    error.value = null;

    final response = await loader(cancelToken: cancelToken);

    handleResponse(response, (updatedData) {
      final sortedData = sortingCompareCriteria != null
          ? updatedData?.sorted(sortingCompareCriteria)
          : updatedData;

      final transformedData = transformationBeforeListAssign != null && sortedData != null
          ? transformationBeforeListAssign(sortedData)
          : sortedData;

      data.assignAll(Map.fromEntries(transformedData?.map((e) => MapEntry(e.id, e)) ?? []));
      handleBeforeLoadEnd?.call(transformedData);
    });
    hadFirstLoad = true;
  }

  @override
  T? getById(String? id) => id != null ? data[id] : null;

  @override
  bool idExists(String id) => getById(id) != null;

  List<T> getList() => data.values.toList();

  @override
  Future<void> onDataClean() async {
    data.clear();
    loading.value = false;
    error.value = null;
  }
}

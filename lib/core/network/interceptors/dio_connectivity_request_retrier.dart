import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

class DioConnectivityRequestRetrier {
  DioConnectivityRequestRetrier({required Dio dioWithoutRetrier, required this.connectivity})
      : dio = dioWithoutRetrier;

  final Dio dio;
  final Connectivity connectivity;

  static const maxRetryAttempts = 10;

  Future<void> scheduleRequestRetry(RequestOptions requestOptions, ErrorInterceptorHandler handler,
      {int retryCount = 0}) async {
    StreamSubscription<dynamic>? streamSubscription;
    final requestCompleter = Completer<Response<dynamic>>();
    try {
      streamSubscription = connectivity.onConnectivityChanged.listen((connectivityResult) {
        if (connectivityResult != ConnectivityResult.none) {
          streamSubscription?.cancel();
          dio
              .fetch<dynamic>(requestOptions)
              .then(requestCompleter.complete)
              .onError((error, stackTrace) {
            if (error != null) requestCompleter.completeError(error);
          });
        }
      });

      handler.resolve(await requestCompleter.future);
    } on DioException catch (err) {
      if (shouldRetry(err) && retryCount < maxRetryAttempts) {
        scheduleRequestRetry(requestOptions, handler, retryCount: retryCount + 1);
      } else {
        handler.next(err);
      }
    }
  }

  static bool shouldRetry(DioException err) =>
      err.type == DioExceptionType.unknown && err.error != null && err.error is SocketException;
}

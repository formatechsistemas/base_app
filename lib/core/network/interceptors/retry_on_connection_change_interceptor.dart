import 'package:coleta_solo/core/network/interceptors/dio_connectivity_request_retrier.dart';
import 'package:dio/dio.dart';

class RetryOnConnectionChangeInterceptor extends Interceptor {
  RetryOnConnectionChangeInterceptor({required this.requestRetrier});

  final DioConnectivityRequestRetrier requestRetrier;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.requestOptions.method != 'GET') {
      handler.next(err);
      return;
    }

    if (DioConnectivityRequestRetrier.shouldRetry(err)) {
      requestRetrier.scheduleRequestRetry(err.requestOptions, handler);
    } else {
      super.onError(err, handler);
    }
  }
}

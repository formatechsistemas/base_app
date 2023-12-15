import 'package:coleta_solo/core/flavors.dart';
import 'package:coleta_solo/core/network/interceptors/dio_connectivity_request_retrier.dart';
import 'package:coleta_solo/core/network/interceptors/retry_on_connection_change_interceptor.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class FormatechDio {
  factory FormatechDio() {
    return _instance;
  }

  FormatechDio._privateConstructor();

  static final FormatechDio _instance = FormatechDio._privateConstructor();

  bool _isInitialized = false;
  final _dio = Dio();

  Future<Dio> get dio async {
    if (!_isInitialized) {
      await initialize();
    }
    return _dio;
  }

  Future<void> initialize() async {
    await configureDio(_dio);
    _isInitialized = true;
  }

  Future<void> configureDio(Dio dio, {bool withRetrier = true}) async {
    _dio.options.baseUrl = F.baseApiURL;

    _dio.options.receiveTimeout = 2.minutes;
    _dio.options.sendTimeout = 2.minutes;
    _dio.options.connectTimeout = 2.minutes;

    if (withRetrier) {
      final retrierDio = Dio();
      await configureDio(retrierDio, withRetrier: false);
      _dio.interceptors.add(RetryOnConnectionChangeInterceptor(
          requestRetrier: DioConnectivityRequestRetrier(
              connectivity: Connectivity(), dioWithoutRetrier: retrierDio)));
    }
  }
}

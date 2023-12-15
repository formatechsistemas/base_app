import 'dart:io';

import 'package:coleta_solo/core/flavors.dart';
import 'package:coleta_solo/core/models/shared/errors/cache_error.dart';
import 'package:coleta_solo/core/models/shared/errors/not_supported_on_offline_error.dart';
import 'package:coleta_solo/core/network/formatech_dio.dart';
import 'package:coleta_solo/core/services/connectivity_service.dart';
import 'package:coleta_solo/widgets/shared/error_indicator.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;

class ApiUtils {
  static Map<String, dynamic> _parseQueryParams(Map<String, dynamic> queryParams) {
    queryParams.removeWhere((key, dynamic value) {
      if (value == null) {
        return true;
      }
      if (value is List && value.isEmpty) {
        return true;
      }
      if (value is String && value.trim().isEmpty) {
        return true;
      }
      return false;
    });

    return queryParams.map<String, dynamic>((key, dynamic value) {
      String? convertedValue;

      if (value is List) {
        convertedValue = value.join(',');
      } else if (value is bool) {
        convertedValue = value.toString();
      } else if (value is String) {
        convertedValue = value;
      } else if (value is int) {
        convertedValue = value.toString();
      } else if (value is DateTime) {
        convertedValue = value.toIso8601String();
      } else if (value is Iterable) {
        convertedValue = value.toList().join(',');
      } else {
        throw Exception(
            'The type ${value.runtimeType} must me converted before used in API calls.');
      }

      return MapEntry<String, dynamic>(key, convertedValue);
    });
  }

  static Future<String> _buildUrlParams(String base, Map<String, dynamic> queryParams) async {
    final baseUri = Uri.parse(F.baseApiURL);

    Uri finalUrl;

    if (baseUri.scheme == 'http') {
      finalUrl = queryParams.isNotEmpty
          ? Uri.http(baseUri.authority, base, _parseQueryParams(queryParams))
          : Uri.http(baseUri.authority, base);
    } else {
      finalUrl = queryParams.isNotEmpty
          ? Uri.https(baseUri.authority, base, _parseQueryParams(queryParams))
          : Uri.https(baseUri.authority, base);
    }

    return finalUrl.toString();
  }

  static void cancelAllCurrentRequests() {
    for (final token in _currentRequestsCancelTokens.values) {
      token.cancel();
    }
  }

  /// Helper function to make API requests and parse the incoming data.
  ///
  /// [urlBuilder] : Builds the HTTP request URL
  ///
  /// [parseSuccess] : Parses the raw data coming from
  /// the HTTP request into models
  ///
  /// [method] : The HTTP method (GET, PUT, POST or DELETE)
  ///
  /// [queryParamBuilder] : Method that receives the current location
  /// and returns a map with the query params of the request.
  ///
  /// Null values are automatically removed and some
  /// types of data are automatically parsed into string
  ///
  /// [data] : the body of the request (Only used for PUT and POST methods)
  ///
  /// [cancelToken] : The dio CancelToken
  static Future<ApiResponse<T>> makeRequest<T>(
      {required String Function() urlBuilder,
      required SuccessApiResponse<T> Function(dynamic data) parseSuccess,
      RequestMethod method = RequestMethod.get,
      Map<String, dynamic> Function()? queryParamBuilder,
      Map<String, dynamic>? data,
      CancelToken? cancelToken}) async {
    if (getx.Get.find<ConnectivityService>().isOffline.isTrue) {
      const errorMessage = 'Tried to make a request to remote while offline';

      return ApiResponse.error(NotSupportedOnOfflineError(errorMessage), null);
    }

    final dio = await FormatechDio().dio;

    final innerCancelToken = cancelToken ?? CancelToken();

    final queryParams = queryParamBuilder != null ? queryParamBuilder() : <String, dynamic>{};
    final baseUrl = urlBuilder();

    final url = await _buildUrlParams(baseUrl, queryParams);

    late final Future<Response<dynamic>> req;
    Response<dynamic>? res;
    try {
      if (method == RequestMethod.delete) {
        req = dio.delete<dynamic>(url, data: data, cancelToken: innerCancelToken);
      } else if (method == RequestMethod.put) {
        req = dio.put<dynamic>(url, data: data, cancelToken: innerCancelToken);
      } else if (method == RequestMethod.post) {
        req = dio.post<dynamic>(url, data: data, cancelToken: innerCancelToken);
      } else {
        req = dio.get<dynamic>(url, cancelToken: innerCancelToken);
      }

      _currentRequestsCancelTokens[req] = innerCancelToken;
      res = await req;
      _currentRequestsCancelTokens.remove(req);

      return ApiResponse.success(parseSuccess(res.data), res);
    } catch (error, stackTrace) {
      if (error is DioException && error.type == DioExceptionType.cancel) {
        return ApiResponse.error(error, res);
      }

      // Don't register error if the request was send and status code is 401
      if (error is DioException && error.response != null) {
        res = error.response;
      }

      F.printDev(error);
      F.printDev(stackTrace);

      return ApiResponse.error(error, res);
    }
  }

  static final _currentRequestsCancelTokens = <Future<Response<dynamic>>, CancelToken>{};
}

/// The request http method
enum RequestMethod { get, put, post, delete }

/// A success api response. Contains the data parsed from the request
class SuccessApiResponse<T> {
  /// Creates a non paginated api response
  SuccessApiResponse(this.data);

  /// Creates a paginated api response
  SuccessApiResponse.paginated(
      {required int this.page,
      required int this.limit,
      required int this.count,
      required this.data});

  /// The page loaded. Null when data is not paginated
  int? page;

  /// The pagination limit. Null when data is not paginated
  int? limit;

  /// The total quantity of items. Null when data is not paginated
  int? count;

  /// The data parsed from the HTTP response data
  final T data;
}

/// A API response that is returned by [ApiUtil.makeRequest].
class ApiResponse<T> {
  /// Creates a new [ApiResponse] with success status
  ApiResponse.success(SuccessApiResponse<T> this.successData, this.rawResponse);

  /// Creates a new [ApiResponse] with error status
  ApiResponse.error(this.error, this.rawResponse);

  /// The error if the requests results in error
  ///
  /// Generally a DioError or an error when parsing data,
  /// since the parse is wrapped in a try/catch
  dynamic error;

  /// The success Api response or null if an error occurs.
  SuccessApiResponse<T>? successData;

  /// The response of the HTTP call
  Response<dynamic>? rawResponse;

  /// Returns if the call results in an error
  bool hasError() {
    return error != null;
  }

  /// Returns if the call results in a status code of forbidden (`403`)
  bool get isResourceForbidden {
    return error is DioException &&
        (error as DioException).response?.statusCode == HttpStatus.forbidden;
  }

  /// Returns if the call results in a status code of preconditionRequired (`428`).
  /// Which is used to indicate that a resource is outdated
  bool get isResourceOutdated =>
      error is DioException &&
      (error as DioException).response?.statusCode == HttpStatus.preconditionRequired;

  /// Returns if the call results in the status code (`409`)
  bool get isConflictResponse =>
      error is DioException && (error as DioException).response?.statusCode == HttpStatus.conflict;

  /// Returns if the call results in a parse error
  bool get isParseError {
    return error is! DioException;
  }

  /// Returns if the call results the error if from a problem on the offline data
  bool get isOfflineError {
    return error is CacheError;
  }

  /// Returns the type of error that was resulted.
  ///
  /// Used to show the [ErrorIndicator] widget.
  ErrorIndicatorType get errorIndicatorType {
    if (isResourceForbidden) {
      return ErrorIndicatorType.forbidden;
    } else if (isOfflineError) {
      return ErrorIndicatorType.unavailableOffline;
    } else if (isParseError) {
      return ErrorIndicatorType.generic;
    }

    return ErrorIndicatorType.genericNetwork;
  }

  /// Returns if the request was canceled.
  /// This will only happen when you pass a [CancelToken]
  /// to the [ApiUtil.makeRequest] helper
  bool wasCanceled() {
    return error is DioException && (error as DioException).type == DioExceptionType.cancel;
  }

  /// Return if is the last page. Only works for paginated responses.
  bool isLastPage() {
    // Force non pagination
    if (successData!.limit == 0) {
      return true;
    }

    return (successData!.page ?? 0) * (successData!.limit ?? 0) >= (successData!.count ?? 0);
  }

  /// Return if the response is null
  bool responseIsNull() {
    return successData?.data == null;
  }

  /// Return the parsed data of a success request.
  ///
  /// Before using this, make sure that you have checked for an error
  T get data => successData!.data!;
}

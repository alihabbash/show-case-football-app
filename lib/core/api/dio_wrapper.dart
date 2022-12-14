import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:football/core/api/api_const.dart';
import 'package:football/core/api/api_keys.dart';
import 'package:football/core/exceptions/app_exceptions.dart';
import 'package:logger/logger.dart';

class DioWrapper {
  static final _dioWrapper = DioWrapper._();
  late final Dio dioClient;

  DioWrapper._() {
    dioClient = Dio()
      ..options.connectTimeout = ApiConst.timeoutMilliseconds
      ..options.receiveTimeout = ApiConst.timeoutMilliseconds
      ..options.sendTimeout = ApiConst.timeoutMilliseconds
      ..options.headers.addAll({
        ApiKeys.authHeader: ApiConst.apiKey,
      });
    dioClient.interceptors.add(_loggingInterceptor);
    // dioClient.interceptors.add(_cacheInterceptor);
  }

  factory DioWrapper() => _dioWrapper;

  LogInterceptor get _loggingInterceptor => LogInterceptor(
        responseBody: true,
        requestBody: true,
        logPrint: Logger().i,
      );

// DioCacheInterceptor get _cacheInterceptor {
//   final options = CacheOptions(
//       store: MemCacheStore(),
//       priority: CachePriority.normal,
//       maxStale: const Duration(days: 1),
//       keyBuilder: CacheOptions.defaultCacheKeyBuilder);
//   return DioCacheInterceptor(
//     options: options,
//   );
// }
}

import 'package:dio/dio.dart';
import 'package:football/core/api/api_const.dart';
import 'package:football/core/api/api_keys.dart';

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
  }

  factory DioWrapper() => _dioWrapper;
}

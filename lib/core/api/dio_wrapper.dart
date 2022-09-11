import 'package:dio/dio.dart';
import 'package:football/core/api/api_const.dart';
import 'package:football/core/api/api_keys.dart';
import 'package:football/core/exceptions/app_exceptions.dart';

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
    dioClient.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) {
        if (e.response == null) {
          throw NoInternetException();
        }
        if (e.response!.statusCode == 403) {
          throw UnauthorisedException();
        }
        if (e.response!.statusCode == 499 || e.response!.statusCode == 500) {
          throw BadRequestException();
        }
        throw FetchDataException();
        // handler.next(e);
      },
    ));
  }

  factory DioWrapper() => _dioWrapper;
}

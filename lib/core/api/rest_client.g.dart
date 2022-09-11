// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://v3.football.api-sports.io/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<FixturesModel> getFixtures(
      {required leagueId, required season}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'league': leagueId,
      r'season': season
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FixturesModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'fixtures/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FixturesModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> getFixtureLineUps({required fixtureId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'fixture': fixtureId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, 'fixtures/lineups/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

import 'package:dio/dio.dart';
import 'package:football/core/api/api_keys.dart';
import 'package:football/core/api/urls.dart';
import 'package:football/features/home/data/model/fixtures/fixtures_model.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Urls.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(Urls.fixtures)
  Future<FixturesModel> getFixtures({
    @Query(ApiKeys.leagueId) required int leagueId,
    @Query(ApiKeys.season) required int season,
  });

  @GET(Urls.lineup)
  Future getFixtureLineUps({
    @Query(ApiKeys.fixtureId) required int fixtureId,
  });
}

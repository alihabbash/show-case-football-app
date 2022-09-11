import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:football/core/api/rest_client.dart';
import 'package:football/core/entities/error_entity.dart';
import 'package:football/core/exceptions/app_exceptions.dart';
import 'package:football/features/home/domain/entity/fixtures_entity.dart';
import 'package:football/features/home/domain/repository/ihome_repository.dart';
import 'package:logger/logger.dart';

class HomeRepository extends IHomeRepository {
  HomeRepository(this._restClient);

  final RestClient _restClient;

  @override
  Future<Either<ErrorEntity, FixturesEntity>> getAllFixtures({
    required int leagueId,
    required int season,
  }) async {
    try {
      final res =
          await _restClient.getFixtures(leagueId: leagueId, season: season);
      final finishedMatches = res.response
          .where((element) => element.fixtureDetails?.isFinished ?? false)
          .toList();

      final upcomingMatches = res.response
          .where((element) => !(element.fixtureDetails?.isFinished ?? false))
          .toList();

      final entity = FixturesEntity(
        finishedMatches: finishedMatches,
        upcomingMatches: upcomingMatches,
      );
      return Right(entity);
    } on DioError catch (e) {
      Logger().e(e);
      return Left(ErrorEntity.fromException(e.convertToAppException()));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:football/core/entities/error_entity.dart';
import 'package:football/features/home/domain/entity/fixtures_entity.dart';

abstract class IHomeRepository {
  Future<Either<ErrorEntity, FixturesEntity>> getAllFixtures();
}

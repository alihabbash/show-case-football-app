import 'package:football/features/home/data/model/fixtures/fixture_item_model.dart';
import 'package:football/features/home/data/model/fixtures/fixtures_model.dart';

class FixturesEntity {
  final List<FixtureItemModel> finishedMatches, upcomingMatches;

  FixturesEntity({
    required this.finishedMatches,
    required this.upcomingMatches,
  });
}

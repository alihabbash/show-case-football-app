import 'package:football/features/home/data/model/fixtures/fixture_details_model.dart';
import 'package:football/features/home/data/model/fixtures/league_model.dart';
import 'package:football/features/home/data/model/fixtures/score_model.dart';
import 'package:football/features/home/data/model/fixtures/teams_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'goals_model.dart';

part 'fixture_item_model.g.dart';

@JsonSerializable()
class FixtureItemModel {
  @JsonKey(name: 'fixture')
  final FixtureDetailsModel? fixtureDetails;
  final LeagueModel? league;
  final TeamsModel? teams;
  final GoalsModel? goals;
  final ScoreModel? score;

  FixtureItemModel({
    this.fixtureDetails,
    this.league,
    this.teams,
    this.goals,
    this.score,
  });

  factory FixtureItemModel.fromJson(Map<String, dynamic> json) =>
      _$FixtureItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$FixtureItemModelToJson(this);
}

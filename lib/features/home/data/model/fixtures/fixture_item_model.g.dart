// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixture_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FixtureItemModel _$FixtureItemModelFromJson(Map<String, dynamic> json) =>
    FixtureItemModel(
      fixtureDetails: json['fixture'] == null
          ? null
          : FixtureDetailsModel.fromJson(
              json['fixture'] as Map<String, dynamic>),
      league: json['league'] == null
          ? null
          : LeagueModel.fromJson(json['league'] as Map<String, dynamic>),
      teams: json['teams'] == null
          ? null
          : TeamsModel.fromJson(json['teams'] as Map<String, dynamic>),
      goals: json['goals'] == null
          ? null
          : GoalsModel.fromJson(json['goals'] as Map<String, dynamic>),
      score: json['score'] == null
          ? null
          : ScoreModel.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FixtureItemModelToJson(FixtureItemModel instance) =>
    <String, dynamic>{
      'fixture': instance.fixtureDetails,
      'league': instance.league,
      'teams': instance.teams,
      'goals': instance.goals,
      'score': instance.score,
    };

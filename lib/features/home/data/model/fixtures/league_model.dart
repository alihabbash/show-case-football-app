import 'package:json_annotation/json_annotation.dart';

part 'league_model.g.dart';

@JsonSerializable()
class LeagueModel {
  final int? id, season;
  final String? name, country, logo, flag, round;

  LeagueModel({
    this.id,
    this.season,
    this.name,
    this.country,
    this.logo,
    this.flag,
    this.round,
  });

  factory LeagueModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueModelToJson(this);
}

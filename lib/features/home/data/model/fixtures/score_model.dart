import 'package:json_annotation/json_annotation.dart';

import 'goals_model.dart';

part 'score_model.g.dart';

@JsonSerializable()
class ScoreModel {
  final GoalsModel? halftime, fulltime, extratime, penalty;

  ScoreModel({
    this.halftime,
    this.fulltime,
    this.extratime,
    this.penalty,
  });

  factory ScoreModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreModelToJson(this);
}

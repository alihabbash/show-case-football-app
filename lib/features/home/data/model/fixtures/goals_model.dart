import 'package:json_annotation/json_annotation.dart';

part 'goals_model.g.dart';

@JsonSerializable()
class GoalsModel {
  final int? home, away;

  GoalsModel({
    this.home,
    this.away,
  });

  factory GoalsModel.fromJson(Map<String, dynamic> json) =>
      _$GoalsModelFromJson(json);

  Map<String, dynamic> toJson() => _$GoalsModelToJson(this);
}

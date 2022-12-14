import 'package:json_annotation/json_annotation.dart';

part 'teams_model.g.dart';

@JsonSerializable()
class TeamsModel {
  final TeamDetailsModel? home, away;

  TeamsModel({
    this.home,
    this.away,
  });

  factory TeamsModel.fromJson(Map<String, dynamic> json) =>
      _$TeamsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamsModelToJson(this);
}

@JsonSerializable()
class TeamDetailsModel {
  final int? id;
  final String? name, logo;

  TeamDetailsModel({
    this.id,
    this.name,
    this.logo,
  });

  String? get readableName {
    if (name == null) {
      return null;
    }
    if (name!.contains('U21')) {
      return name!.split('U21').first;
    }

    return name;
  }

  factory TeamDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TeamDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamDetailsModelToJson(this);
}

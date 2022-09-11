import 'package:json_annotation/json_annotation.dart';

import 'fixture_item_model.dart';

part 'fixtures_model.g.dart';

@JsonSerializable()
class FixturesModel {
  FixturesModel(this.response);
  final List<FixtureItemModel> response;

  factory FixturesModel.fromJson(Map<String, dynamic> json) =>
      _$FixturesModelFromJson(json);

  Map<String, dynamic> toJson() => _$FixturesModelToJson(this);
}

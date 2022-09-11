import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fixture_details_model.g.dart';

@JsonSerializable()
class FixtureDetailsModel {
  final int? id;
  final String? referee;
  final DateTime? date;
  final VenueModel? venue;
  final StatusModel? status;

  FixtureDetailsModel({
    this.id,
    this.referee,
    this.date,
    this.venue,
    this.status,
  });

  bool get isFinished => date != null ? DateTime.now().isAfter(date!) : false;

  String get readableDate =>
      date != null ? DateFormat('dd-MM-yyyy').format(date!) : 'No date';

  String get readableTime =>
      date != null ? DateFormat('HH:mm').format(date!) : 'No time';

  factory FixtureDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$FixtureDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FixtureDetailsModelToJson(this);
}

@JsonSerializable()
class VenueModel {
  final int? id;
  final String? name, city;

  VenueModel({
    this.id,
    this.name,
    this.city,
  });

  factory VenueModel.fromJson(Map<String, dynamic> json) =>
      _$VenueModelFromJson(json);

  Map<String, dynamic> toJson() => _$VenueModelToJson(this);
}

@JsonSerializable()
class StatusModel {
  final String? long, short;
  final int? elapsed;

  StatusModel({
    this.long,
    this.short,
    this.elapsed,
  });

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$StatusModelToJson(this);
}

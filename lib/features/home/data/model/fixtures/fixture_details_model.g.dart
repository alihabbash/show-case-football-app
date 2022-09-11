// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixture_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FixtureDetailsModel _$FixtureDetailsModelFromJson(Map<String, dynamic> json) =>
    FixtureDetailsModel(
      id: json['id'] as int?,
      referee: json['referee'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      venue: json['venue'] == null
          ? null
          : VenueModel.fromJson(json['venue'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FixtureDetailsModelToJson(
        FixtureDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referee': instance.referee,
      'date': instance.date?.toIso8601String(),
      'venue': instance.venue,
      'status': instance.status,
    };

VenueModel _$VenueModelFromJson(Map<String, dynamic> json) => VenueModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$VenueModelToJson(VenueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
    };

StatusModel _$StatusModelFromJson(Map<String, dynamic> json) => StatusModel(
      long: json['long'] as String?,
      short: json['short'] as String?,
      elapsed: json['elapsed'] as int?,
    );

Map<String, dynamic> _$StatusModelToJson(StatusModel instance) =>
    <String, dynamic>{
      'long': instance.long,
      'short': instance.short,
      'elapsed': instance.elapsed,
    };

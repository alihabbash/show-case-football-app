// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamsModel _$TeamsModelFromJson(Map<String, dynamic> json) => TeamsModel(
      home: json['home'] == null
          ? null
          : TeamDetailsModel.fromJson(json['home'] as Map<String, dynamic>),
      away: json['away'] == null
          ? null
          : TeamDetailsModel.fromJson(json['away'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamsModelToJson(TeamsModel instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

TeamDetailsModel _$TeamDetailsModelFromJson(Map<String, dynamic> json) =>
    TeamDetailsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$TeamDetailsModelToJson(TeamDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };

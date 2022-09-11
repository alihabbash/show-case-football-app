// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixtures_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FixturesModel _$FixturesModelFromJson(Map<String, dynamic> json) =>
    FixturesModel(
      (json['response'] as List<dynamic>)
          .map((e) => FixtureItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FixturesModelToJson(FixturesModel instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

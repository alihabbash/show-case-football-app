// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreModel _$ScoreModelFromJson(Map<String, dynamic> json) => ScoreModel(
      halftime: json['halftime'] == null
          ? null
          : GoalsModel.fromJson(json['halftime'] as Map<String, dynamic>),
      fulltime: json['fulltime'] == null
          ? null
          : GoalsModel.fromJson(json['fulltime'] as Map<String, dynamic>),
      extratime: json['extratime'] == null
          ? null
          : GoalsModel.fromJson(json['extratime'] as Map<String, dynamic>),
      penalty: json['penalty'] == null
          ? null
          : GoalsModel.fromJson(json['penalty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreModelToJson(ScoreModel instance) =>
    <String, dynamic>{
      'halftime': instance.halftime,
      'fulltime': instance.fulltime,
      'extratime': instance.extratime,
      'penalty': instance.penalty,
    };

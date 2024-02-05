// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_uder_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditUserPreference _$EditUserPreferenceFromJson(Map<String, dynamic> json) =>
    EditUserPreference(
      gender: json['gender'] as int?,
      maxAge: json['max_age'] as int?,
      maxDistance: json['max_distance'] as int?,
      minAge: json['min_age'] as int?,
    );

Map<String, dynamic> _$EditUserPreferenceToJson(EditUserPreference instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'max_age': instance.maxAge,
      'max_distance': instance.maxDistance,
      'min_age': instance.minAge,
    };

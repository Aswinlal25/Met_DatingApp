// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      minAge: json['min_age'] as int?,
      maxAge: json['max_age'] as int?,
      gender: json['gender'] as int?,
      maxDistance: json['max_distance'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'min_age': instance.minAge,
      'max_age': instance.maxAge,
      'gender': instance.gender,
      'max_distance': instance.maxDistance,
    };

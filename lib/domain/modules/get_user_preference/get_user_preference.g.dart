// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserPreference _$GetUserPreferenceFromJson(Map<String, dynamic> json) =>
    GetUserPreference(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$GetUserPreferenceToJson(GetUserPreference instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

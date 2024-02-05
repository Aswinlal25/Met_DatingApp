// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_preference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditUserPreferenceResponse _$EditUserPreferenceResponseFromJson(
        Map<String, dynamic> json) =>
    EditUserPreferenceResponse(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$EditUserPreferenceResponseToJson(
        EditUserPreferenceResponse instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfileResponse _$EditProfileResponseFromJson(Map<String, dynamic> json) =>
    EditProfileResponse(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$EditProfileResponseToJson(
        EditProfileResponse instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

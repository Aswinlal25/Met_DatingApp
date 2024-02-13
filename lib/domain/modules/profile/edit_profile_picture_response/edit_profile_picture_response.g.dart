// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_picture_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfilePictureResponse _$EditProfilePictureResponseFromJson(
        Map<String, dynamic> json) =>
    EditProfilePictureResponse(
      data: json['data'] as String?,
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$EditProfilePictureResponseToJson(
        EditProfilePictureResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponseModel _$ProfileModelResponseFromJson(
        Map<String, dynamic> json) =>
    ProfileResponseModel(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'],
      error: json['Error'] as String?,
    );

Map<String, dynamic> _$ProfileModelResponseToJson(
        ProfileResponseModel instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

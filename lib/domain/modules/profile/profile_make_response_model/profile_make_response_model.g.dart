// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_make_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileMakeResponseModel _$ProfileMakeResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProfileMakeResponseModel(
      data: json['data'] as String?,
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$ProfileMakeResponseModelToJson(
        ProfileMakeResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

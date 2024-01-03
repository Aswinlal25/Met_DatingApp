// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_number_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneNumberResponseModel _$PhoneNumberResponseModelFromJson(
        Map<String, dynamic> json) =>
    PhoneNumberResponseModel(
      data: json['data'] as String?,
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$PhoneNumberResponseModelToJson(
        PhoneNumberResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

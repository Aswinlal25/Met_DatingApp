// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_updated_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyUpdatedNumberResponse _$VerifyUpdatedNumberResponseFromJson(
        Map<String, dynamic> json) =>
    VerifyUpdatedNumberResponse(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$VerifyUpdatedNumberResponseToJson(
        VerifyUpdatedNumberResponse instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updeted_phone_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdetedPhoneNumberResponse _$UpdetedPhoneNumberResponseFromJson(
        Map<String, dynamic> json) =>
    UpdetedPhoneNumberResponse(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$UpdetedPhoneNumberResponseToJson(
        UpdetedPhoneNumberResponse instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

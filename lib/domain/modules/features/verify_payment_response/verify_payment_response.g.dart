// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyPaymentResponse _$VerifyPaymentResponseFromJson(
        Map<String, dynamic> json) =>
    VerifyPaymentResponse(
      data: json['data'] as String?,
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$VerifyPaymentResponseToJson(
        VerifyPaymentResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

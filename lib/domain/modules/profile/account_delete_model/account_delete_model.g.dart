// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_delete_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDeleteModel _$AccountDeleteModelFromJson(Map<String, dynamic> json) =>
    AccountDeleteModel(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'],
      error: json['Error'] as String?,
    );

Map<String, dynamic> _$AccountDeleteModelToJson(AccountDeleteModel instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersOrderModel _$UsersOrderModelFromJson(Map<String, dynamic> json) =>
    UsersOrderModel(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['Error'],
    );

Map<String, dynamic> _$UsersOrderModelToJson(UsersOrderModel instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

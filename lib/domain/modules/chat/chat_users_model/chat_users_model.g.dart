// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatUsersModel _$ChatUsersModelFromJson(Map<String, dynamic> json) =>
    ChatUsersModel(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['Error'],
    );

Map<String, dynamic> _$ChatUsersModelToJson(ChatUsersModel instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

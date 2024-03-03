// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMessages _$GetMessagesFromJson(Map<String, dynamic> json) => GetMessages(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['Error'],
    );

Map<String, dynamic> _$GetMessagesToJson(GetMessages instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

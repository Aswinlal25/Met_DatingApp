// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockResponse _$BlockResponseFromJson(Map<String, dynamic> json) =>
    BlockResponse(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$BlockResponseToJson(BlockResponse instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

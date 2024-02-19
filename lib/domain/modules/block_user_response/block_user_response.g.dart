// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockUserResponse _$BlockUserResponseFromJson(Map<String, dynamic> json) =>
    BlockUserResponse(
      data: json['data'] as String?,
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$BlockUserResponseToJson(BlockUserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

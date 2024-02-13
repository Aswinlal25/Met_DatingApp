// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_likes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLikes _$GetLikesFromJson(Map<String, dynamic> json) => GetLikes(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$GetLikesToJson(GetLikes instance) => <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

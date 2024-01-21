// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDetails _$ProfileDetailsFromJson(Map<String, dynamic> json) =>
    ProfileDetails(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'],
      error: json['Error'] as String?,
    );

Map<String, dynamic> _$ProfileDetailsToJson(ProfileDetails instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

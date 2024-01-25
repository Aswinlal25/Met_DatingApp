// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDetailsModel _$ProfileDetailsModelFromJson(Map<String, dynamic> json) =>
    ProfileDetailsModel(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$ProfileDetailsModelToJson(
        ProfileDetailsModel instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommented_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommentedModel _$RecommentedModelFromJson(Map<String, dynamic> json) =>
    RecommentedModel(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: (json['Data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['Error'],
    );

Map<String, dynamic> _$RecommentedModelToJson(RecommentedModel instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_plan_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPlanDetailsModel _$GetPlanDetailsModelFromJson(Map<String, dynamic> json) =>
    GetPlanDetailsModel(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$GetPlanDetailsModelToJson(
        GetPlanDetailsModel instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

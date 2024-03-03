// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subciption_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubciptionOrderModel _$SubciptionOrderModelFromJson(
        Map<String, dynamic> json) =>
    SubciptionOrderModel(
      statusCode: json['StatusCode'] as int?,
      message: json['Message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
      error: json['Error'],
    );

Map<String, dynamic> _$SubciptionOrderModelToJson(
        SubciptionOrderModel instance) =>
    <String, dynamic>{
      'StatusCode': instance.statusCode,
      'Message': instance.message,
      'Data': instance.data,
      'Error': instance.error,
    };

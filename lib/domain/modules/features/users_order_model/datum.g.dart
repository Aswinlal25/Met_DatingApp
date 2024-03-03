// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      subscriptionId: json['subscription_id'] as int?,
      subscriptionName: json['subscription_name'] as String?,
      amount: json['amount'] as int?,
      subscribeDate: json['subscribe_date'] as String?,
      expiryDate: json['expiry_date'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'subscription_id': instance.subscriptionId,
      'subscription_name': instance.subscriptionName,
      'amount': instance.amount,
      'subscribe_date': instance.subscribeDate,
      'expiry_date': instance.expiryDate,
      'status': instance.status,
    };

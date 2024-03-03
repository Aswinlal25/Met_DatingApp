// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      userName: json['UserName'] as String?,
      amount: json['Amount'] as int?,
      razorId: json['RazorId'] as String?,
      orderId: json['OrderId'] as int?,
      amountPisa: json['AmountPisa'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'UserName': instance.userName,
      'Amount': instance.amount,
      'RazorId': instance.razorId,
      'OrderId': instance.orderId,
      'AmountPisa': instance.amountPisa,
    };

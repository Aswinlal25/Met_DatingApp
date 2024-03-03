// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      name: json['name'] as String?,
      amount: json['amount'] as int?,
      days: json['days'] as int?,
      likes: json['likes'] as int?,
      seeLike: json['see_like'] as bool?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
      'days': instance.days,
      'likes': instance.likes,
      'see_like': instance.seeLike,
    };

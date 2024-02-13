// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      userId: json['user_id'] as int?,
      isSubscribed: json['is_subscribed'] as bool?,
      seeLike: json['see_like'] as bool?,
      likes: json['likes'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'user_id': instance.userId,
      'is_subscribed': instance.isSubscribed,
      'see_like': instance.seeLike,
      'likes': instance.likes,
    };

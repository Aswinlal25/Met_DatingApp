// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      userId: json['user_id'] as int?,
      isSubscribed: json['is_subscribed'] as bool?,
      seeLike: json['see_like'] as bool?,
      likeCount: json['like_count'] as int?,
      likes: (json['likes'] as List<dynamic>?)
          ?.map((e) => Like.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'user_id': instance.userId,
      'is_subscribed': instance.isSubscribed,
      'see_like': instance.seeLike,
      'like_count': instance.likeCount,
      'likes': instance.likes,
    };

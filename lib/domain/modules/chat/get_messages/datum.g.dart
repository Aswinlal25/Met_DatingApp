// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as String?,
      senderId: json['sender_id'] as int?,
      chatId: json['chat_id'] as String?,
      seen: json['seen'] as bool?,
      image: json['image'] as String?,
      messageContent: json['message_content'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.senderId,
      'chat_id': instance.chatId,
      'seen': instance.seen,
      'image': instance.image,
      'message_content': instance.messageContent,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

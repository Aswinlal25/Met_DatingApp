import 'package:json_annotation/json_annotation.dart';

part 'chat.g.dart';

@JsonSerializable()
class Chat {
  String? id;
  List<int>? users;
  @JsonKey(name: 'last_message')
  String? lastMessage;
  @JsonKey(name: 'last_message_time')
  DateTime? lastMessageTime;

  Chat({this.id, this.users, this.lastMessage, this.lastMessageTime});

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}

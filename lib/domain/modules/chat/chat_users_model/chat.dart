import 'package:json_annotation/json_annotation.dart';

part 'chat.g.dart';

@JsonSerializable()
class Chat {
  String? id;
  List<int>? users;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  Chat({this.id, this.users, this.createdAt});

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}

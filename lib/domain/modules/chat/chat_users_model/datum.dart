import 'package:json_annotation/json_annotation.dart';

import 'chat.dart';
import 'user.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'Chat')
  Chat? chat;
  @JsonKey(name: 'User')
  User? user;

  Datum({this.chat, this.user});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  get data => null;

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

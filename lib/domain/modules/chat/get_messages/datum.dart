import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  String? id;
  @JsonKey(name: 'sender_id')
  int? senderId;
  @JsonKey(name: 'chat_id')
  String? chatId;
  bool? seen;
  String? image;
  @JsonKey(name: 'message_content')
  String? messageContent;
  DateTime? timestamp;

  Datum({
    this.id,
    this.senderId,
    this.chatId,
    this.seen,
    this.image,
    this.messageContent,
    this.timestamp,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_messages.g.dart';

@JsonSerializable()
class GetMessages {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  List<Datum>? data;
  @JsonKey(name: 'Error')
  dynamic error;

  GetMessages({this.statusCode, this.message, this.data, this.error});

  factory GetMessages.fromJson(Map<String, dynamic> json) {
    return _$GetMessagesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetMessagesToJson(this);
}

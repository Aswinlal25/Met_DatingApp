import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'chat_users_model.g.dart';

@JsonSerializable()
class ChatUsersModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  List<Datum>? data;
  @JsonKey(name: 'Error')
  dynamic error;

  ChatUsersModel({this.statusCode, this.message, this.data, this.error});

  factory ChatUsersModel.fromJson(Map<String, dynamic> json) {
    return _$ChatUsersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChatUsersModelToJson(this);
}

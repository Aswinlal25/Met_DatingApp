import 'package:json_annotation/json_annotation.dart';

part 'block_user_response.g.dart';

@JsonSerializable()
class BlockUserResponse {
  String? data;
  String? error;
  String? message;
  int? statusCode;

  BlockUserResponse({this.data, this.error, this.message, this.statusCode});

  factory BlockUserResponse.fromJson(Map<String, dynamic> json) {
    return _$BlockUserResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BlockUserResponseToJson(this);
}

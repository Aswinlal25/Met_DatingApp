import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'block_response.g.dart';

@JsonSerializable()
class BlockResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  BlockResponse({this.statusCode, this.message, this.data, this.error});

  factory BlockResponse.fromJson(Map<String, dynamic> json) {
    return _$BlockResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BlockResponseToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_likes.g.dart';

@JsonSerializable()
class GetLikes {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  GetLikes({this.statusCode, this.message, this.data, this.error});

  factory GetLikes.fromJson(Map<String, dynamic> json) {
    return _$GetLikesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetLikesToJson(this);
}

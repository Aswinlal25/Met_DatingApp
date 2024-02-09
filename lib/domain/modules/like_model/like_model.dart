import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'like_model.g.dart';

@JsonSerializable()
class LikeModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  LikeModel({this.statusCode, this.message, this.data, this.error});

  factory LikeModel.fromJson(Map<String, dynamic> json) {
    return _$LikeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LikeModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'match_model.g.dart';

@JsonSerializable()
class MatchModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  MatchModel({this.statusCode, this.message, this.data, this.error});

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    return _$MatchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MatchModelToJson(this);
}

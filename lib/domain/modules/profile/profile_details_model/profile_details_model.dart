import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'profile_details_model.g.dart';

@JsonSerializable()
class ProfileDetailsModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  ProfileDetailsModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory ProfileDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$ProfileDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileDetailsModelToJson(this);
}

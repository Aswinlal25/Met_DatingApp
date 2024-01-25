import 'package:json_annotation/json_annotation.dart';

part 'profile_make_response_model.g.dart';

@JsonSerializable()
class ProfileMakeResponseModel {
  String? data;
  String? error;
  String? message;
  int? statusCode;

  ProfileMakeResponseModel({
    this.data,
    this.error,
    this.message,
    this.statusCode,
  });

  factory ProfileMakeResponseModel.fromJson(Map<String, dynamic> json) {
    return _$ProfileMakeResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileMakeResponseModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'profile_model_response.g.dart';

@JsonSerializable()
class ProfileModelResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  dynamic data;
  @JsonKey(name: 'Error')
  String? error;

  ProfileModelResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory ProfileModelResponse.fromJson(Map<String, dynamic> json) {
    return _$ProfileModelResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileModelResponseToJson(this);
}

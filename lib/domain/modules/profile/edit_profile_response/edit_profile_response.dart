import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'edit_profile_response.g.dart';

@JsonSerializable()
class EditProfileResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  EditProfileResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory EditProfileResponse.fromJson(Map<String, dynamic> json) {
    return _$EditProfileResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditProfileResponseToJson(this);
}

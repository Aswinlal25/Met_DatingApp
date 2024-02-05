import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'edit_user_preference.g.dart';

@JsonSerializable()
class EditUserPreferenceResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  EditUserPreferenceResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory EditUserPreferenceResponse.fromJson(Map<String, dynamic> json) {
    return _$EditUserPreferenceResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditUserPreferenceResponseToJson(this);
}

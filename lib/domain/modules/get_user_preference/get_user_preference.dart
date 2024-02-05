import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_user_preference.g.dart';

@JsonSerializable()
class GetUserPreference {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  GetUserPreference({this.statusCode, this.message, this.data, this.error});

  factory GetUserPreference.fromJson(Map<String, dynamic> json) {
    return _$GetUserPreferenceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetUserPreferenceToJson(this);
}

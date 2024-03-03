import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'updeted_phone_number_response.g.dart';

@JsonSerializable()
class UpdetedPhoneNumberResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  UpdetedPhoneNumberResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory UpdetedPhoneNumberResponse.fromJson(Map<String, dynamic> json) {
    return _$UpdetedPhoneNumberResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdetedPhoneNumberResponseToJson(this);
}

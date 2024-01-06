import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'verify_otp_response.g.dart';

@JsonSerializable()
class VerifyOtpResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  VerifyOtpResponse({this.statusCode, this.message, this.data, this.error});

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpResponseToJson(this);
}

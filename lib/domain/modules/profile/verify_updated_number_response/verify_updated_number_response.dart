import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'verify_updated_number_response.g.dart';

@JsonSerializable()
class VerifyUpdatedNumberResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  VerifyUpdatedNumberResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory VerifyUpdatedNumberResponse.fromJson(Map<String, dynamic> json) {
    return _$VerifyUpdatedNumberResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyUpdatedNumberResponseToJson(this);
}

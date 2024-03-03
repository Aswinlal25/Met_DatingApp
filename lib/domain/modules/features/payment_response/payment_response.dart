import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'payment_response.g.dart';

@JsonSerializable()
class PaymentResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  PaymentResponse({this.statusCode, this.message, this.data, this.error});

  factory PaymentResponse.fromJson(Map<String, dynamic> json) {
    return _$PaymentResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentResponseToJson(this);
}

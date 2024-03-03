import 'package:json_annotation/json_annotation.dart';

part 'verify_payment_response.g.dart';

@JsonSerializable()
class VerifyPaymentResponse {
  String? data;
  String? error;
  String? message;
  int? statusCode;

  VerifyPaymentResponse({
    this.data,
    this.error,
    this.message,
    this.statusCode,
  });

  factory VerifyPaymentResponse.fromJson(Map<String, dynamic> json) {
    return _$VerifyPaymentResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyPaymentResponseToJson(this);
}

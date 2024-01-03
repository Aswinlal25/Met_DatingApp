import 'package:json_annotation/json_annotation.dart';

part 'phone_number_response_model.g.dart';

@JsonSerializable()
class PhoneNumberResponseModel {
  String? data;
  String? error;
  String? message;
  @JsonKey(name: 'statusCode')
  int? statusCode;

  PhoneNumberResponseModel({
    this.data,
    this.error,
    this.message,
    this.statusCode,
  });

  factory PhoneNumberResponseModel.fromJson(Map<String, dynamic> json) {
    return _$PhoneNumberResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneNumberResponseModelToJson(this);
}

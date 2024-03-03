import 'package:json_annotation/json_annotation.dart';

part 'verify_updated_number.g.dart';

@JsonSerializable()
class VerifyUpdatedNumber {
  String? code;
  @JsonKey(name: 'ph_no')
  String? phNo;

  VerifyUpdatedNumber({this.code, this.phNo});

  factory VerifyUpdatedNumber.fromJson(Map<String, dynamic> json) {
    return _$VerifyUpdatedNumberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyUpdatedNumberToJson(this);
}

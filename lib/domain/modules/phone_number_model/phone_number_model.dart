import 'package:json_annotation/json_annotation.dart';

part 'phone_number_model.g.dart';

@JsonSerializable()
class PhoneNumberModel {
  @JsonKey(name: 'ph_no')
  String? phNo;

  PhoneNumberModel({this.phNo});

  factory PhoneNumberModel.fromJson(Map<String, dynamic> json) {
    return _$PhoneNumberModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneNumberModelToJson(this);
}

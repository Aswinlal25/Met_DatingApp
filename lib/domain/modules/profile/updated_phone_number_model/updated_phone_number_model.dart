import 'package:json_annotation/json_annotation.dart';

part 'updated_phone_number_model.g.dart';

@JsonSerializable()
class UpdatedPhoneNumberModel {
  @JsonKey(name: 'ph_no')
  String? phNo;

  UpdatedPhoneNumberModel({this.phNo});

  factory UpdatedPhoneNumberModel.fromJson(Map<String, dynamic> json) {
    return _$UpdatedPhoneNumberModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdatedPhoneNumberModelToJson(this);
}

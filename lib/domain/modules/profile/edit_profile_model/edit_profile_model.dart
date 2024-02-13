import 'package:json_annotation/json_annotation.dart';

part 'edit_profile_model.g.dart';

@JsonSerializable()
class EditProfileModel {
  String? bio;
  String? city;
  String? country;
  List<int>? interests;
  String? name;
  @JsonKey(name: 'ph_no')
  String? phNo;

  EditProfileModel({
    this.bio,
    this.city,
    this.country,
    this.interests,
    this.name,
    this.phNo,
  });

  factory EditProfileModel.fromJson(Map<String, dynamic> json) {
    return _$EditProfileModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditProfileModelToJson(this);
}

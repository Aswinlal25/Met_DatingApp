import 'package:json_annotation/json_annotation.dart';

part 'user_details.g.dart';

@JsonSerializable()
class UserDetails {
  int? id;
  String? name;
  String? dob;
  int? age;
  @JsonKey(name: 'ph_no')
  String? phNo;
  String? gender;
  String? city;
  String? country;
  double? longitude;
  double? lattitude;
  String? bio;

  UserDetails({
    this.id,
    this.name,
    this.dob,
    this.age,
    this.phNo,
    this.gender,
    this.city,
    this.country,
    this.longitude,
    this.lattitude,
    this.bio,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return _$UserDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}

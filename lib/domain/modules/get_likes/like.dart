import 'package:json_annotation/json_annotation.dart';

part 'like.g.dart';

@JsonSerializable()
class Like {
  int? id;
  String? name;
  String? dob;
  int? age;
  String? gender;
  String? city;
  String? country;
  String? bio;
  String? image;

  Like({
    this.id,
    this.name,
    this.dob,
    this.age,
    this.gender,
    this.city,
    this.country,
    this.bio,
    this.image,
  });

  factory Like.fromJson(Map<String, dynamic> json) => _$LikeFromJson(json);

  Map<String, dynamic> toJson() => _$LikeToJson(this);
}

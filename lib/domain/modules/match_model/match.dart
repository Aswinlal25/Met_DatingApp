import 'package:json_annotation/json_annotation.dart';

part 'match.g.dart';

@JsonSerializable()
class Match {
  int? id;
  String? name;
  String? dob;
  int? age;
  String? gender;
  String? city;
  String? country;
  String? bio;
  String? image;
  List<String>? interests;

  Match({
    this.id,
    this.name,
    this.dob,
    this.age,
    this.gender,
    this.city,
    this.country,
    this.bio,
    this.image,
    this.interests,
  });

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}

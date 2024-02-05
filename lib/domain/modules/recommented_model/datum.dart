import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  String? name;
  int? age;
  String? gender;
  String? city;
  String? country;
  double? longitude;
  double? lattitude;
  String? bio;
  List<String>? images;

  Datum({
    this.id,
    this.name,
    this.age,
    this.gender,
    this.city,
    this.country,
    this.longitude,
    this.lattitude,
    this.bio,
    this.images,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

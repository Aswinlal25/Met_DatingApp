import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'min_age')
  int? minAge;
  @JsonKey(name: 'max_age')
  int? maxAge;
  int? gender;
  @JsonKey(name: 'max_distance')
  int? maxDistance;

  Data({this.minAge, this.maxAge, this.gender, this.maxDistance});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

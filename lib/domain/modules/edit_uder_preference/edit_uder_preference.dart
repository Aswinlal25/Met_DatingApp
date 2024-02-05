import 'package:json_annotation/json_annotation.dart';

part 'edit_uder_preference.g.dart';

@JsonSerializable()
class EditUserPreference {
  @JsonKey(name: 'gender')
  int? gender;
  @JsonKey(name: 'max_age')
  int? maxAge;
  @JsonKey(name: 'max_distance')
  int? maxDistance;
  @JsonKey(name: 'min_age')
  int? minAge;

  EditUserPreference({
    this.gender,
    this.maxAge,
    this.maxDistance,
    this.minAge,
  });

  factory EditUserPreference.fromJson(Map<String, dynamic> json) {
    return _$EditUserPreferenceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditUserPreferenceToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

import 'user_details.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'UserDetails')
  UserDetails? userDetails;
  @JsonKey(name: 'Image')
  List<String>? image;
  @JsonKey(name: 'Interests')
  List<String>? interests;

  Data({this.userDetails, this.image, this.interests});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

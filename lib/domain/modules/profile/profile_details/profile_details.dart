import 'package:json_annotation/json_annotation.dart';

part 'profile_details.g.dart';

@JsonSerializable()
class ProfileDetails {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  dynamic data;
  @JsonKey(name: 'Error')
  String? error;

  ProfileDetails({this.statusCode, this.message, this.data, this.error});

  factory ProfileDetails.fromJson(Map<String, dynamic> json) {
    return _$ProfileDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProfileDetailsToJson(this);
}

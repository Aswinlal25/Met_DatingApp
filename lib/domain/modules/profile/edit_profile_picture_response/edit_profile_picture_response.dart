import 'package:json_annotation/json_annotation.dart';

part 'edit_profile_picture_response.g.dart';

@JsonSerializable()
class EditProfilePictureResponse {
  String? data;
  String? error;
  String? message;
  int? statusCode;

  EditProfilePictureResponse({
    this.data,
    this.error,
    this.message,
    this.statusCode,
  });

  factory EditProfilePictureResponse.fromJson(Map<String, dynamic> json) {
    return _$EditProfilePictureResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditProfilePictureResponseToJson(this);
}

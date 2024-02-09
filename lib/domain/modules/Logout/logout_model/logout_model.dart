import 'package:json_annotation/json_annotation.dart';

part 'logout_model.g.dart';

@JsonSerializable()
class LogoutModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  dynamic data;
  @JsonKey(name: 'Error')
  String? error;

  LogoutModel({this.statusCode, this.message, this.data, this.error});

  factory LogoutModel.fromJson(Map<String, dynamic> json) {
    return _$LogoutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LogoutModelToJson(this);
}

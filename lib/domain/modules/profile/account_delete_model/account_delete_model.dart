import 'package:json_annotation/json_annotation.dart';

part 'account_delete_model.g.dart';

@JsonSerializable()
class AccountDeleteModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  dynamic data;
  @JsonKey(name: 'Error')
  String? error;

  AccountDeleteModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory AccountDeleteModel.fromJson(Map<String, dynamic> json) {
    return _$AccountDeleteModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccountDeleteModelToJson(this);
}

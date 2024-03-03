import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'users_order_model.g.dart';

@JsonSerializable()
class UsersOrderModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  List<Datum>? data;
  @JsonKey(name: 'Error')
  dynamic error;

  UsersOrderModel({this.statusCode, this.message, this.data, this.error});

  factory UsersOrderModel.fromJson(Map<String, dynamic> json) {
    return _$UsersOrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UsersOrderModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'subciption_order_model.g.dart';

@JsonSerializable()
class SubciptionOrderModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  SubciptionOrderModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory SubciptionOrderModel.fromJson(Map<String, dynamic> json) {
    return _$SubciptionOrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SubciptionOrderModelToJson(this);
}

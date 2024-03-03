import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'subscription_model.g.dart';

@JsonSerializable()
class SubscriptionModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  List<Datum>? data;
  @JsonKey(name: 'Error')
  dynamic error;

  SubscriptionModel({this.statusCode, this.message, this.data, this.error});

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) {
    return _$SubscriptionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SubscriptionModelToJson(this);
}

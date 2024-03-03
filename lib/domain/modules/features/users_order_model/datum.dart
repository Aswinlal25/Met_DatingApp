import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  @JsonKey(name: 'subscription_id')
  int? subscriptionId;
  @JsonKey(name: 'subscription_name')
  String? subscriptionName;
  int? amount;
  @JsonKey(name: 'subscribe_date')
  String? subscribeDate;
  @JsonKey(name: 'expiry_date')
  String? expiryDate;
  String? status;

  Datum({
    this.id,
    this.subscriptionId,
    this.subscriptionName,
    this.amount,
    this.subscribeDate,
    this.expiryDate,
    this.status,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

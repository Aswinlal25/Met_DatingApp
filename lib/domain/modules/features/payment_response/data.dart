import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'UserName')
  String? userName;
  @JsonKey(name: 'Amount')
  int? amount;
  @JsonKey(name: 'RazorId')
  String? razorId;
  @JsonKey(name: 'OrderId')
  int? orderId;
  @JsonKey(name: 'AmountPisa')
  int? amountPisa;

  Data({
    this.userName,
    this.amount,
    this.razorId,
    this.orderId,
    this.amountPisa,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

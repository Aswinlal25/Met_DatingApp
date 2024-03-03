import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'order_response.g.dart';

@JsonSerializable()
class OrderResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  OrderResponse({this.statusCode, this.message, this.data, this.error});

  factory OrderResponse.fromJson(Map<String, dynamic> json) {
    return _$OrderResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);
}

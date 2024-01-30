import 'package:json_annotation/json_annotation.dart';

part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  dynamic data;
  @JsonKey(name: 'Error')
  String? error;

  HomeResponse({this.statusCode, this.message, this.data, this.error});

  factory HomeResponse.fromJson(Map<String, dynamic> json) {
    return _$HomeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

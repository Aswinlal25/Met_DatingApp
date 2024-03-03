import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'report_response.g.dart';

@JsonSerializable()
class ReportResponse {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  ReportResponse({this.statusCode, this.message, this.data, this.error});

  factory ReportResponse.fromJson(Map<String, dynamic> json) {
    return _$ReportResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReportResponseToJson(this);
}

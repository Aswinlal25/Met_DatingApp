import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_plan_details_model.g.dart';

@JsonSerializable()
class GetPlanDetailsModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  Data? data;
  @JsonKey(name: 'Error')
  dynamic error;

  GetPlanDetailsModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetPlanDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$GetPlanDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetPlanDetailsModelToJson(this);
}

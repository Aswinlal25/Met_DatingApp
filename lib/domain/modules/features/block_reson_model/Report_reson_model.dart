import 'package:json_annotation/json_annotation.dart';

part 'Report_reson_model.g.dart';

@JsonSerializable()
class ReportResonModel {
  String? message;

  ReportResonModel({this.message});

  factory ReportResonModel.fromJson(Map<String, dynamic> json) {
    return _$ReportResonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReportResonModelToJson(this);
}

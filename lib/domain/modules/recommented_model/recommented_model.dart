import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'recommented_model.g.dart';

@JsonSerializable()
class RecommentedModel {
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'Message')
  String? message;
  @JsonKey(name: 'Data')
  List<Datum>? data;
  @JsonKey(name: 'Error')
  dynamic error;

  RecommentedModel({this.statusCode, this.message, this.data, this.error});

  factory RecommentedModel.fromJson(Map<String, dynamic> json) {
    return _$RecommentedModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecommentedModelToJson(this);
}

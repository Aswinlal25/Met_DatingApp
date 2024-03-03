import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int? id;
  String? name;
  int? amount;
  int? days;
  int? likes;
  @JsonKey(name: 'see_like')
  bool? seeLike;

  Data({
    this.id,
    this.name,
    this.amount,
    this.days,
    this.likes,
    this.seeLike,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

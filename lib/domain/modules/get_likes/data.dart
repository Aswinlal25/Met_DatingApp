import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'is_subscribed')
  bool? isSubscribed;
  @JsonKey(name: 'see_like')
  bool? seeLike;
  dynamic likes;

  Data({this.userId, this.isSubscribed, this.seeLike, this.likes});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

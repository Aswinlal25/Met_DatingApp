// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
      id: json['id'] as int?,
      name: json['name'] as String?,
      dob: json['dob'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      bio: json['bio'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dob': instance.dob,
      'age': instance.age,
      'gender': instance.gender,
      'city': instance.city,
      'country': instance.country,
      'bio': instance.bio,
      'image': instance.image,
    };

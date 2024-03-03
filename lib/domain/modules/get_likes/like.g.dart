// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Like _$LikeFromJson(Map<String, dynamic> json) => Like(
      id: json['id'] as int?,
      name: json['name'] as String?,
      dob: json['dob'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      bio: json['bio'] as String?,
      image: json['image'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$LikeToJson(Like instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dob': instance.dob,
      'age': instance.age,
      'gender': instance.gender,
      'city': instance.city,
      'country': instance.country,
      'bio': instance.bio,
      'image': instance.image,
      'interests': instance.interests,
    };

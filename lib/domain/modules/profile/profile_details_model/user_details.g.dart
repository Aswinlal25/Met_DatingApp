// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) => UserDetails(
      id: json['id'] as int?,
      name: json['name'] as String?,
      dob: json['dob'] as String?,
      age: json['age'] as int?,
      phNo: json['ph_no'] as String?,
      gender: json['gender'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      lattitude: (json['lattitude'] as num?)?.toDouble(),
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dob': instance.dob,
      'age': instance.age,
      'ph_no': instance.phNo,
      'gender': instance.gender,
      'city': instance.city,
      'country': instance.country,
      'longitude': instance.longitude,
      'lattitude': instance.lattitude,
      'bio': instance.bio,
    };

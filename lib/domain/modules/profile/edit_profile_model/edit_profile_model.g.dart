// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfileModel _$EditProfileModelFromJson(Map<String, dynamic> json) =>
    EditProfileModel(
      bio: json['bio'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      interests:
          (json['interests'] as List<dynamic>?)?.map((e) => e as int).toList(),
      name: json['name'] as String?,
      phNo: json['ph_no'] as String?,
    );

Map<String, dynamic> _$EditProfileModelToJson(EditProfileModel instance) =>
    <String, dynamic>{
      'bio': instance.bio,
      'city': instance.city,
      'country': instance.country,
      'interests': instance.interests,
      'name': instance.name,
      'ph_no': instance.phNo,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      userDetails: json['UserDetails'] == null
          ? null
          : UserDetails.fromJson(json['UserDetails'] as Map<String, dynamic>),
      image:
          (json['Image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      interests: (json['Interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'UserDetails': instance.userDetails,
      'Image': instance.image,
      'Interests': instance.interests,
    };

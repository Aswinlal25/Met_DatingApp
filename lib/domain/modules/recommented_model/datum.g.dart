// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      name: json['name'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      lattitude: (json['lattitude'] as num?)?.toDouble(),
      bio: json['bio'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'gender': instance.gender,
      'city': instance.city,
      'country': instance.country,
      'longitude': instance.longitude,
      'lattitude': instance.lattitude,
      'bio': instance.bio,
      'images': instance.images,
    };

import 'package:dio/dio.dart';

class ProfileModel {
  String? name;
  String? dob;
  int? genderId;
  String? city;
  String? country;
  double? longitude;
  double? lattitude;
  String? bio;
  String? interests;
  MultipartFile? images;

  ProfileModel(
      {this.name,
      this.dob,
      this.genderId,
      this.city,
      this.country,
      this.longitude,
      this.lattitude,
      this.bio,
      this.interests,
      this.images});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dob = json['dob'];
    genderId = json['genderId'];
    city = json['city'];
    country = json['country'];
    longitude = json['longitude'];
    lattitude = json['lattitude'];
    bio = json['bio'];
    interests = json['interests'];
    images = json['images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['dob'] = this.dob;
    data['genderId'] = this.genderId;
    data['city'] = this.city;
    data['country'] = this.country;
    data['longitude'] = this.longitude;
    data['lattitude'] = this.lattitude;
    data['bio'] = this.bio;
    data['interests'] = this.interests;
    data['images'] = this.images;

    return data;
  }
}

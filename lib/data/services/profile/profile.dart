// import 'dart:developer';
// import 'dart:io';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/Token/token_model.dart';
import 'package:dating_app/domain/modules/profile/profile_details/profile_details.dart';
import 'package:dating_app/domain/modules/profile/profile_model/profile_model.dart';
import 'package:dating_app/domain/modules/profile/profile_model_response/profile_model_response.dart';
import 'package:dating_app/domain/repositories/user_repository.dart';
import 'package:dio/dio.dart';

class ProfileApi implements ProfileRepository {
  @override
  Future<Either<Failure, ProfileModelResponse>> makeprofile(
      {required ProfileModel profileModel,required TokenModel tokenModel}) async {
    // String namesString = "";
    // for (var a in names) {
    //   if (namesString == "") {
    //     namesString = a;
    //   } else {
    //     namesString = "${namesString},$a";
    //   }
    // }
    final bearer = await tokenModel.accessToken;
    final Dio dio = Dio(
        BaseOptions(baseUrl: ApiEndPoints.baseUrl, headers: <String, dynamic>{
      "accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer $bearer"
    }));

    try {
      final body = FormData.fromMap(profileModel.toJson());
      final response = await dio.post(ApiEndPoints.Userprofile, data: body);

      if (response.statusCode == 200) {
        log("msg ---> ${response.data['message']}");
        return right(ProfileModelResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return left(Failure.clientFailure().copyWith(
            message: ProfileModelResponse.fromJson(response.data).message!));
      } else if (response.statusCode == 401) {
        return left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } catch (e) {
      print('msg --->${e.toString()}');
      return Left(Failure.serverFailure().copyWith(message: e.toString()));
    }
        throw UnimplementedError();

  }
  

  @override
  Future<Either<Failure, ProfileDetails>> getprofileDetails( {required TokenModel tokenModel}) async {
    final bearer =  await tokenModel.accessToken;
     

    final Dio dio = Dio(
        BaseOptions(baseUrl: ApiEndPoints.baseUrl, headers: <String, dynamic>{
      "accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer $bearer"
    }));

    try {
      final respone = await dio.get(ApiEndPoints.Userprofile);

      if (respone.statusCode == 200) {
        return Right(ProfileDetails.fromJson(respone.data));
      } else if (respone.statusCode == 401) {
        return left(Failure.tokenExpire());
      } else if (respone.statusCode == 500) {
        return left(Failure.serverFailure()
            .copyWith(message: ProfileDetails.fromJson(respone.data).message!));
      }
    } on DioException catch (dioError) {
      print("msg --->${dioError.message.toString()}");
      return Left(Failure.serverFailure().copyWith(message: errorMsg));
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }
}













































 //      List<MultipartFile> multipartFiles = [];

      // for (File file in files) {
      //   String fileName = file.path.split('/').last;
      //   multipartFiles.add(await MultipartFile.fromFile(file.path, filename: fileName));
      // }
      //    final map = <String, dynamic>{};
      // map['name'] = 'password';
      // map['dob'] = '3MVG9dZJodJWITSviqdj3EnW.LrZ81MbuGBqgIxxxdD6u7Mru2NOEs8bHFoFyNw_nVKPhlF2EzDbNYI0rphQL';
      // map['client_secret'] = '42E131F37E4E05313646E1ED1D3788D76192EBECA7486D15BDDB8408B9726B42';
      // map['username'] = 'example@mail.com.us';
      // map['password'] = 'ABC1234563Af88jesKxPLVirJRW8wXvj3D';
      // FormData formData = FormData.fromMap({
      //   "image": await MultipartFile.fromFile(
      //     imageFile.path,
      //     filename: "image.jpg", // Replace with your desired filename
      //   ),
      //   "name": "",
      // });
      // File myfile = File("path");
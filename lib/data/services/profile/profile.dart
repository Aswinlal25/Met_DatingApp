// ignore_for_file: unused_local_variable

import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dating_app/application/presentation/screens/edit_profile_screen/edited_profile.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/profile_picture/profile_picture_screen.dart';
import 'package:dating_app/application/presentation/screens/make_profile_screens/user_info/iuser_info_screen.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_model/edit_profile_model.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_picture_response/edit_profile_picture_response.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_response/edit_profile_response.dart';
import 'package:dating_app/domain/modules/profile/profile_details/profile_details.dart';
import 'package:dating_app/domain/modules/profile/profile_details_model/profile_details_model.dart';
import 'package:dating_app/domain/modules/profile/profile_make_response_model/profile_make_response_model.dart';
import 'package:dating_app/domain/modules/profile/updated_phone_number_model/updated_phone_number_model.dart';
import 'package:dating_app/domain/modules/profile/updeted_phone_number_response/updeted_phone_number_response.dart';
import 'package:dating_app/domain/modules/profile/verify_updated_number/verify_updated_number.dart';
import 'package:dating_app/domain/modules/profile/verify_updated_number_response/verify_updated_number_response.dart';
import 'package:dating_app/domain/repositories/user_repository.dart';
import 'package:dio/dio.dart';

class ProfileApi implements ProfileRepository {
  @override
  Future<Either<Failure, ProfileMakeResponseModel>> makeprofile() async {
    final accessToken = await SharedPref.getToken();
    final accesskey = accessToken.accessToken;
    final refreshkey = accessToken.refreshToken;
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Content-Type": "multipart/form-data",
          "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
        },
      ),
    );

    FormData formData = FormData();
    formData.fields
      ..add(MapEntry('name', notifier.value.name ?? ''))
      ..add(MapEntry('dob', notifier.value.dob ?? ''))
      ..add(MapEntry('genderId', notifier.value.genderId?.toString() ?? ''))
      ..add(MapEntry('country', notifier.value.country ?? ''))
      ..add(MapEntry('lattitude', notifier.value.lattitude?.toString() ?? ''))
      ..add(MapEntry('longitude', notifier.value.longitude?.toString() ?? ''))
      ..add(MapEntry('bio', notifier.value.bio ?? ''))
      ..add(MapEntry('interests', notifier.value.interests ?? ''))
      ..add(MapEntry('city', notifier.value.city ?? ''));

    // Image files to the FormData
    for (int i = 0; i < images.length; i++) {
      File? image = images[i];
      if (image != null && image.existsSync()) {
        String fileName = 'image$i.jpg';
        formData.files.add(MapEntry(
          'images',
          await MultipartFile.fromFile(
            image.path,
            filename: fileName,
          ),
        ));
      }
    }
    try {
      final response = await dio.post(ApiEndPoints.Userprofile, data: formData);

      print('respone->>${response.statusCode.toString()}');
      if (response.statusCode == 200) {
        log("msg ---> ${response.data['message']}");
        return right(ProfileMakeResponseModel.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return left(Failure.clientFailure().copyWith(
            message: ProfileMakeResponseModel.fromJson(response.data).error!));
      } else if (response.statusCode == 401) {
        final msg = ProfileMakeResponseModel.fromJson(response.data).error!;
        print('Client Error----------------->$msg');
        return left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print("msg --->${dioError.message.toString()}");
      return Left(
          Failure.serverFailure().copyWith(message: errorMsg.toString()));
    } catch (e) {
      print('msg ---------------------->${e.toString()}');
      return Left(Failure.serverFailure().copyWith(message: e.toString()));
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ProfileDetailsModel>> getprofileDetails() async {
    final accessToken = await SharedPref.getToken();
    final accesskey = accessToken.accessToken;
    final refreshkey = accessToken.refreshToken;

    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Content-Type": "multipart/form-data",
          "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
        },
      ),
    );

    try {
      final respone = await dio.get(ApiEndPoints.Userprofile);

      if (respone.statusCode == 200) {
        print('response..............${respone.data}');
        return Right(ProfileDetailsModel.fromJson(respone.data));
      } else if (respone.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (respone.statusCode == 500) {
        return Left(Failure.serverFailure()
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

  @override
  Future<Either<Failure, EditProfileResponse>> editprofileDetails(
      {required EditProfileModel editProfileModel}) async {
    final Token = await SharedPref.getToken();
    final accesskey = Token.accessToken;
    final refreshkey = Token.refreshToken;

    Dio dio = Dio(BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      headers: <String, dynamic>{
        "accept": "application/json",
        "Content-Type": "application/json",
        "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
      },
    ));

    try {
      final response = await dio.put(ApiEndPoints.Userprofile,
          data: editProfileModel.toJson());
      print(response.data);
      if (response.statusCode == 200) {
        return Right(EditProfileResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure());
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure().copyWith(
            message: EditProfileResponse.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      print('dioError-----${dioError.message}');
    } catch (e) {
      print('Error---------${e.toString()}');
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EditProfilePictureResponse>>
      editprofilepicture() async {
    final accessToken = await SharedPref.getToken();
    final accesskey = accessToken.accessToken;
    final refreshkey = accessToken.refreshToken;
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Content-Type": "multipart/form-data",
          "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
        },
      ),
    );

    FormData formData = FormData();

    // Image files to the FormData
    for (int i = 0; i < Editedimages.length; i++) {
      File? image = Editedimages[i];
      if (image != null && image.existsSync()) {
        String fileName = 'image$i.jpg';
        formData.files.add(MapEntry(
          'images',
          await MultipartFile.fromFile(
            image.path,
            filename: fileName,
          ),
        ));
      }
    }
    try {
      final response =
          await dio.patch(ApiEndPoints.Userprofile, data: formData);

      print('respone--------------->>${response.statusCode.toString()}');
      if (response.statusCode == 200) {
        return right(EditProfilePictureResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return left(Failure.clientFailure().copyWith(
            message:
                EditProfilePictureResponse.fromJson(response.data).error!));
      } else if (response.statusCode == 401) {
        final msg = EditProfilePictureResponse.fromJson(response.data).error!;

        return left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print("msg --->${dioError.message.toString()}");
      return Left(
          Failure.serverFailure().copyWith(message: errorMsg.toString()));
    } catch (e) {
      print('msg ---------------------->${e.toString()}');
      return Left(Failure.serverFailure().copyWith(message: e.toString()));
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, VerifyUpdatedNumberResponse>> verifyNewNumbe(
      {required VerifyUpdatedNumber verifyUpdatedNumber}) async {
    final accessToken = await SharedPref.getToken();
    final accesskey = accessToken.accessToken;
    final refreshkey = accessToken.refreshToken;
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Content-Type": "application/json",
          "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
        },
      ),
    );
    try {
      final verifyNumber = verifyUpdatedNumber.toJson();

      final response =
          await dio.patch(ApiEndPoints.verifynewphNo, data: verifyNumber);
      print('--------------verifyed-----${response.data.toString()}');
      if (response.statusCode == 200) {
        return Right(VerifyUpdatedNumberResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message:
                VerifyUpdatedNumberResponse.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure().copyWith(
            message:
                '-----------------Error--------${VerifyUpdatedNumberResponse.fromJson(response.data).error.toString()}'));
      }
    } on DioException catch (dioError) {
      print('Dio - Error${dioError.toString()}');
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UpdetedPhoneNumberResponse>> editphoneNumber(
      {required UpdatedPhoneNumberModel updatedPhoneNumberModel}) async {
    final accessToken = await SharedPref.getToken();
    final accesskey = accessToken.accessToken;
    final refreshkey = accessToken.refreshToken;
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Content-Type": "application/json",
          "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
        },
      ),
    );
    try {
      final newphNo = updatedPhoneNumberModel.toJson();
      final response = await dio.post(ApiEndPoints.newphNo, data: newphNo);
      if (response.statusCode == 200) {
        return Right(UpdetedPhoneNumberResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message:
                UpdetedPhoneNumberResponse.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print('Dio - Error${dioError.toString()}');
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }
}

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/error_msg.dart';
import 'package:dating_app/domain/modules/phone_number_model/phone_number_model.dart';
import 'package:dating_app/domain/modules/phone_number_response_model/phone_number_response_model.dart';
import 'package:dating_app/domain/modules/verify_otp_model/verify_otp_model.dart';
import 'package:dating_app/domain/modules/verify_otp_response/verify_otp_response.dart';
import 'package:dating_app/domain/repositories/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthApi implements AuthRepository {
  final Dio dio = Dio(BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      headers: <String, dynamic>{
        "accept": "application/json",
        "Content-Type": "application/json"
      }));

  @override
  Future<Either<ErrorMsg, PhoneNumberResponseModel>> otpLogin(
      {required PhoneNumberModel phoneNumberModel}) async {
    print("the function is oky here calling");
    try {
      final response = await dio.post(ApiEndPoints.otpLogin,
          data: phoneNumberModel.toJson());
      print("the function is responce get");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("the function is responce get is oky");
        log("msg ---> ${response.data['message']}");
        return right(PhoneNumberResponseModel.fromJson(response.data));
      } else {
        print("the function is responce get is not oky");
        return Left(ErrorMsg(
            message:
                PhoneNumberResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('msg --->${dioError.message.toString()}');
      print("msg --->${dioError.message.toString()}");
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('msg --->${e.toString()}');
      print('msg --->${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, VerifyOtpResponse>> otpVerify(
      {required VerifyOtpModel verifyOtpModel}) async {
    try {
      final response =
          await dio.post(ApiEndPoints.otpverify, data: verifyOtpModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        log('msg --->${response.data['message']}');
        return right(VerifyOtpResponse.fromJson(response.data));
      } else {
        return left(ErrorMsg(
            message: VerifyOtpResponse.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('msg ---> ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('msg --->${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }
}

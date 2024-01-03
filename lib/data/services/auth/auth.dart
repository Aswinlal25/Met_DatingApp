import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/error_msg.dart';
import 'package:dating_app/domain/modules/phone_number_model/phone_number_model.dart';
import 'package:dating_app/domain/modules/phone_number_response_model/phone_number_response_model.dart';
import 'package:dating_app/domain/modules/verify_otp_model/verify_otp_model.dart';
import 'package:dating_app/domain/modules/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:dating_app/domain/repositories/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthApi implements AuthRepository {
  final Dio dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<ErrorMsg, PhoneNumberResponseModel>> otpLogin(
      {required PhoneNumberModel phoneNumberModel}) async {
    try {
      final response = await dio.post(ApiEndPoints.otpLogin,
          data: phoneNumberModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        log("msg ---> ${response.data['message']}");
        return right(PhoneNumberResponseModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                PhoneNumberResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('msg --->${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('msg --->${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, VerifyOtpResponseModel>> otpVerify(
      {required VerifyOtpModel verifyOtpModel}) async {
    try {
      final response =
          await dio.post(ApiEndPoints.otpverify, data: verifyOtpModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        log('msg --->${response.data['message']}');
        return right(VerifyOtpResponseModel.fromJson(response.data));
      } else {
        return left(ErrorMsg(
            message: VerifyOtpResponseModel.fromJson(response.data).message!));
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

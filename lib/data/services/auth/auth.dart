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
    try {
      final response = await dio.post(ApiEndPoints.otpLogin,
          data: phoneNumberModel.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        log("msg ---> ${response.data['message']}");
        return Right(PhoneNumberResponseModel.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(ErrorMsg(message: 'server is not respond !'));
      } else {
        return Left(ErrorMsg(
            message:
                PhoneNumberResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      print("msg --->${dioError.message.toString()}");
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
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
      } else if (response.statusCode == 400) {
        return Left(ErrorMsg(message: 'Data is not in required format'));
      } else if (response.statusCode == 500) {
        return Left(ErrorMsg(message: 'Error in verifying OTP'));
      } else {
        return Left(ErrorMsg(
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

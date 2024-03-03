import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/error_msg.dart';
import 'package:dating_app/domain/modules/Logout/logout_model/logout_model.dart';
import 'package:dating_app/domain/modules/phone_number_model/phone_number_model.dart';
import 'package:dating_app/domain/modules/phone_number_response_model/phone_number_response_model.dart';
import 'package:dating_app/domain/modules/profile/account_delete_model/account_delete_model.dart';
import 'package:dating_app/domain/modules/verify_otp_model/verify_otp_model.dart';
import 'package:dating_app/domain/modules/verify_otp_response/verify_otp_response.dart';

abstract class AuthRepository {
  Future<Either<ErrorMsg, PhoneNumberResponseModel>> otpLogin(
      {required PhoneNumberModel phoneNumberModel});

  Future<Either<ErrorMsg, VerifyOtpResponse>> otpVerify(
      {required VerifyOtpModel verifyOtpModel});

  Future<Either<ErrorMsg, LogoutModel>> logout();
  Future<Either<ErrorMsg, AccountDeleteModel>> accountDelete();
}

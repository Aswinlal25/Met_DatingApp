import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/error_msg.dart';
import 'package:dating_app/domain/modules/phone_number_model/phone_number_model.dart';
import 'package:dating_app/domain/modules/phone_number_response_model/phone_number_response_model.dart';
import 'package:dating_app/domain/modules/verify_otp_model/verify_otp_model.dart';
import 'package:dating_app/domain/modules/verify_otp_response_model/verify_otp_response_model.dart';

abstract class AuthRepository{

  Future<Either<ErrorMsg,PhoneNumberResponseModel>> otpLogin({required PhoneNumberModel phoneNumberModel});

  Future<Either<ErrorMsg,VerifyOtpResponseModel>> otpVerify({required VerifyOtpModel verifyOtpModel});
  
 
}
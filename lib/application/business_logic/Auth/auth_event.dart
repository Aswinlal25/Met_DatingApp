part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.otpLogin(
      {required PhoneNumberModel phoneNumberModel}) = _OtpLogin;
  const factory AuthEvent.otpVerify({required VerifyOtpModel verifyOtpModel}) =
      _OtpVerify;
  const factory AuthEvent.log() = _Log;
  const factory AuthEvent.signOut() = _SignOut;
}

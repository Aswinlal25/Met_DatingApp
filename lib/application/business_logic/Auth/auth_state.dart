part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool otpIsLoading,
    required bool otpHasError,
    required bool isLoggedIn,
    required bool verifyOtpIsLoading,
    required bool verifyOtpHasError,
    String? message,
    PhoneNumberResponseModel? phoneNumberResponseModel,
    VerifyOtpResponse? verifyOtpResponse,
  }) = _Initial;
  factory AuthState.initial() => const AuthState(
        otpIsLoading: false,
        otpHasError: false,
        isLoggedIn: false,
        verifyOtpIsLoading: false,
        verifyOtpHasError: false,
      );
}

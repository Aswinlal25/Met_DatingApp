import 'package:bloc/bloc.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/modules/Token/token_model.dart';
import 'package:dating_app/domain/modules/phone_number_model/phone_number_model.dart';
import 'package:dating_app/domain/modules/phone_number_response_model/phone_number_response_model.dart';
import 'package:dating_app/domain/modules/verify_otp_model/verify_otp_model.dart';
import 'package:dating_app/domain/modules/verify_otp_response/verify_otp_response.dart';
import 'package:dating_app/domain/repositories/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController poneController = TextEditingController();

  final TextEditingController pinController = TextEditingController();

  final GlobalKey<FormState> phonekey = GlobalKey<FormState>();
  final GlobalKey<FormState> OTPKey = GlobalKey<FormState>();

  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthState.initial()) {
    on<_OtpLogin>((event, emit) async {
      print("f;unction is okey");
      emit(state.copyWith(otpIsLoading: true));
      print("f;unction is okey${state.otpIsLoading}");
      final result = await authRepository.otpLogin(
          phoneNumberModel: event.phoneNumberModel);
      print("f;unction is okey${result.toString()}");
      result.fold((errorMssg) {
        print("f;unction is okey${errorMssg.message}");
        emit(state.copyWith(otpIsLoading: false, message: errorMssg.message));
      }, (phoneNumberResponseModel) {
        print("f;unction is okey${phoneNumberResponseModel.data ?? "data"}");
        emit(state.copyWith(
            otpIsLoading: false,
            phoneNumberResponseModel: phoneNumberResponseModel));
      });
    });

    on<_OtpVerify>((event, emit) async {
      emit(AuthState.initial().copyWith(verifyOtpIsLoading: true));
      final result =
          await authRepository.otpVerify(verifyOtpModel: event.verifyOtpModel);

      result.fold((errorMssg) {
        emit(state.copyWith(
            verifyOtpIsLoading: false, message: errorMssg.message));
      }, (verifyOtpResponse) async {
        emit(state.copyWith(
            verifyOtpIsLoading: false, verifyOtpResponse: verifyOtpResponse));
        await SharedPref.setToken(
            tokenModel: TokenModel(
                accessToken: verifyOtpResponse.data!.accessToken!,
                refreshToken: verifyOtpResponse.data!.refreshToken!));
        await SharedPref.setLogin();
      });
    });

    on<_Log>((event, emit) async {
      final login = await SharedPref.getLogin();
      emit(state.copyWith(isLoggedIn: login));
    });

    on<_SignOut>((event, emit) async {
      print('signout called');
      await SharedPref.removeLogin();
      print('object-------');
      emit(AuthState.initial());
    });
  }
}

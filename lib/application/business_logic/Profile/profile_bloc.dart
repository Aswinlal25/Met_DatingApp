import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_model/edit_profile_model.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_picture_response/edit_profile_picture_response.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_response/edit_profile_response.dart';
import 'package:dating_app/domain/modules/profile/profile_details_model/profile_details_model.dart';
import 'package:dating_app/domain/modules/profile/profile_make_response_model/profile_make_response_model.dart';
import 'package:dating_app/domain/modules/profile/profile_model/profile_model.dart';
import 'package:dating_app/domain/modules/profile/updated_phone_number_model/updated_phone_number_model.dart';
import 'package:dating_app/domain/modules/profile/updeted_phone_number_response/updeted_phone_number_response.dart';
import 'package:dating_app/domain/modules/profile/verify_updated_number/verify_updated_number.dart';
import 'package:dating_app/domain/modules/profile/verify_updated_number_response/verify_updated_number_response.dart';
import 'package:dating_app/domain/repositories/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController cityContoller = TextEditingController();
  final GlobalKey<FormState> infokey = GlobalKey<FormState>();
  final ProfileRepository profileRepository;

  ProfileBloc(this.profileRepository) : super(ProfileState.initial()) {
    on<_Makeprofile>(
      (event, emit) async {
        print('function is okey');
        emit(state.copyWith(dataIsLoading: true));
        print('function is double okey${state.dataIsLoading}');
        final result = await profileRepository.makeprofile();
        print('function is okey------------------------>>${result.toString()}');
        result.fold((errorMssg) {
          emit(
              state.copyWith(dataIsLoading: false, message: errorMssg.message));
        }, (profileMakeResponseModel) {
          emit(state.copyWith(
              dataIsLoading: false,
              profileMakeResponseModel: profileMakeResponseModel));
        });
      },
    );

    on<_GetprofileDetails>((event, emit) async {
      emit(state.copyWith(userdataisLoading: true));

      final result = await profileRepository.getprofileDetails();
      result.fold((errorMssg) {
        emit(state.copyWith(
            userdataisLoading: false, message: errorMssg.message));
      }, (profileDetailsModel) {
        emit(state.copyWith(
            userdataisLoading: false,
            profileDetailsModel: profileDetailsModel));
      });
    });

    on<_EditprofileDetails>((event, emit) async {
      emit(state.copyWith(userdataisLoading: true));

      final result = await profileRepository.editprofileDetails(
          editProfileModel: event.editProfileModel);
      result.fold((errorMssg) {
        emit(state.copyWith(
            userdataisLoading: false, message: errorMssg.message));
      }, (editProfileModelResponse) {
        emit(state.copyWith(
            userdataisLoading: false,
            editProfileResponse: editProfileModelResponse));
      });
    });

    on<_EditProfilePicture>((event, emit) async {
      emit(state.copyWith(userdataisLoading: true));

      final result = await profileRepository.editprofilepicture();
      result.fold((errorMssg) {
        emit(state.copyWith(
            userdataisLoading: false, message: errorMssg.message));
      }, (editProfilePictureResponse) {
        emit(state.copyWith(
            userdataisLoading: false,
            editProfilePictureResponse: editProfilePictureResponse));
      });
    });

    on<_EditPhoneNumber>((event, emit) async {
      emit(state.copyWith(dataIsLoading: true));

      final result = await profileRepository.editphoneNumber(
          updatedPhoneNumberModel: event.updatedPhoneNumberModel);

      result.fold((errorMssg) {
        emit(state.copyWith(dataIsLoading: false, message: errorMssg.message));
      }, (updatedPhoneNumberResponse) {
        emit(state.copyWith(
            dataIsLoading: false,
            updetedPhoneNumberResponse: updatedPhoneNumberResponse));
      });
    });

    on<_VerifyNewNumber>((event, emit) async {
      print('function is ok');
      emit(state.copyWith(verifyisLoading: true));
      log("code------------------${event.verifyUpdatedNumber.code.toString()}");
      final result = await profileRepository.verifyNewNumbe(
          verifyUpdatedNumber: event.verifyUpdatedNumber);

      result.fold((errorMssg) {
        emit(
            state.copyWith(verifyisLoading: false, message: errorMssg.message));
      }, (verifyUpdatedNumberResponse) {
        emit(state.copyWith(
            verifyisLoading: false,
            verifyUpdatedNumberResponse: verifyUpdatedNumberResponse));
      });
    });
  }
}

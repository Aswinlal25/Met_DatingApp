import 'package:bloc/bloc.dart';
import 'package:dating_app/domain/modules/Token/token_model.dart';
import 'package:dating_app/domain/modules/profile/profile_model/profile_model.dart';
import 'package:dating_app/domain/modules/profile/profile_model_response/profile_model_response.dart';
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

 
  final ProfileRepository profileRepository;

  ProfileBloc(this.profileRepository) : super(ProfileState.initial()) {
    on<_Makeprofile>(
      (event, emit) async {
        print('function is okey');
        emit(state.copyWith(dataIsLoading: true));
        final result = await profileRepository.makeprofile(
            profileModel: event.profileModel, tokenModel: event.tokenModel);
        result.fold((errorMssg) {
          emit(
              state.copyWith(dataIsLoading: false, message: errorMssg.message));
        }, (ProfileResponseModel) {
          emit(state.copyWith(
              dataIsLoading: false,
              profileResponseModel: ProfileResponseModel));
        });
      },
    );
  }
}

part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool dataHasError,
    required bool dataIsLoading,
    required bool userdataisLoading,
    required bool userdataHasError,
    required bool verifyHasError,
    required bool verifyisLoading,
    String? message,
    ProfileModel? profileModel,
    ProfileMakeResponseModel? profileMakeResponseModel,
    ProfileDetailsModel? profileDetailsModel,
    EditProfileModel? editProfileModel,
    EditProfileResponse? editProfileResponse,
    EditProfilePictureResponse? editProfilePictureResponse,
    UpdatedPhoneNumberModel? updatedPhoneNumberModel,
    UpdetedPhoneNumberResponse? updetedPhoneNumberResponse,
    VerifyUpdatedNumber? verifyUpdatedNumber,
    VerifyUpdatedNumberResponse? verifyUpdatedNumberResponse,
  }) = _Initial;

  factory ProfileState.initial() => ProfileState(
        dataHasError: false,
        dataIsLoading: false,
        userdataisLoading: false,
        userdataHasError: false,
        verifyHasError: false,
        verifyisLoading: false,
      );
}

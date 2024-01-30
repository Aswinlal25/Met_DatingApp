part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool dataHasError,
    required bool dataIsLoading,
    required bool userdataisLoading,
    required bool userdataHasError,
    String? message,
    ProfileModel? profileModel,
    ProfileMakeResponseModel? profileMakeResponseModel,
    ProfileDetailsModel? profileDetailsModel,
  }) = _Initial;

  factory ProfileState.initial() => ProfileState(
        dataHasError: false,
        dataIsLoading: false,
        userdataisLoading: false,
        userdataHasError: false,
      );
}

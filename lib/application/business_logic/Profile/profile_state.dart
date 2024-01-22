part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool dataHasError,
    required bool dataIsLoading,
    String? message,
    ProfileModel? profileModel,
    ProfileResponseModel? profileResponseModel,
    TokenModel? tokenModel,
  }) = _Initial;

  factory ProfileState.initial() =>   ProfileState(
       
        dataHasError: false,
         dataIsLoading: false,
      );
}

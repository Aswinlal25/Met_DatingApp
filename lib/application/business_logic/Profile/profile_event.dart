part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.makeprofile(
      {required TokenModel tokenModel,
      required ProfileModel profileModel}) = _Makeprofile;
}

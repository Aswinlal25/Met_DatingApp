part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.makeprofile() = _Makeprofile;
  const factory ProfileEvent.getprofileDetails() = _GetprofileDetails;
}

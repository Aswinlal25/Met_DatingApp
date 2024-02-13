part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  factory UsersEvent.gethomedata() = _Gethomedata;
  factory UsersEvent.getprefrence() = _Getprefrence;
  factory UsersEvent.editprefrence(
      {required EditUserPreference editUserPreference}) = _Editprefrence;
  factory UsersEvent.getRecommentdata() = _GetRecommentdata;
  factory UsersEvent.getLikes() = _GetLikes;
}

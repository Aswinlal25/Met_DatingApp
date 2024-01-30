part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    required bool homedataisLoading,
    required bool homedataHasError,
    String? message,
    HomeResponse? homeResponse,
  }) = _Initial;

  factory UsersState.initial() => UsersState(
        homedataisLoading: false,
        homedataHasError: false,
      );
}

part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    required bool homedataisLoading,
    required bool homedataHasError,
    required bool prefrencedataisLoading,
    required bool prefrencedataHasError,
    required bool editdataisLoading,
    String? message,
    HomeResponse? homeResponse,
    GetUserPreference? getUserPreference,
    EditUserPreference? editUserPreference,
    EditUserPreferenceResponse? editUserPreferenceResponse,
    RecommentedModel? recommentedModel,
  }) = _Initial;

  factory UsersState.initial() => UsersState(
        homedataisLoading: false,
        homedataHasError: false,
        prefrencedataisLoading: false,
        prefrencedataHasError: false,
        editdataisLoading: false,
      );
}

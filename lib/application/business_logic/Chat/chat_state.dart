part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState(
      {required bool chatUserisLoading,
      required bool chatUserHasError,
      String? message,
      ChatUsersModel? chatUsersModel}) = _Initial;
  factory ChatState.initial() => ChatState(
        chatUserisLoading: false,
        chatUserHasError: false,
      );
}

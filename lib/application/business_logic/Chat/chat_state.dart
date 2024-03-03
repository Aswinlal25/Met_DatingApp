part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool chatUserisLoading,
    required bool chatUserHasError,
    required bool msgisLoading,
    required bool msgHasEroor,
    String? message,
    ChatUsersModel? chatUsersModel,
    GetMessages? getMessages,
  }) = _Initial;
  factory ChatState.initial() => ChatState(
      chatUserisLoading: false,
      chatUserHasError: false,
      msgisLoading: false,
      msgHasEroor: false);
}

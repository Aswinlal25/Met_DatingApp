part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  factory ChatEvent.getChatUsers() = _GetChatUsers;
  factory ChatEvent.getAllMessages({required String? chatId}) = _GetAllMessages;
}

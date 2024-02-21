import 'package:bloc/bloc.dart';
import 'package:dating_app/domain/modules/chat/chat_users_model/chat_users_model.dart';
import 'package:dating_app/domain/repositories/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository chatRepository;
  ChatBloc(this.chatRepository) : super(ChatState.initial()) {
    on<_GetChatUsers>(
      (event, emit) async {
        emit(state.copyWith());
        final result = await chatRepository.getChatUsers();

        result.fold(
          (failure) {
            emit(state.copyWith(
              chatUserisLoading: false,
              message: 'something went wrong',
            ));
          },
          (ChatUsers) {
            emit(state.copyWith(
              chatUserisLoading: false,
              chatUsersModel: ChatUsers,
            ));
          },
        );
      },
    );
  }
}

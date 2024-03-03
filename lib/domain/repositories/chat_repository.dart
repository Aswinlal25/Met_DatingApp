import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/chat/chat_users_model/chat_users_model.dart';
import 'package:dating_app/domain/modules/chat/get_messages/get_messages.dart';

abstract class ChatRepository {
  Future<Either<Failure, ChatUsersModel>> getChatUsers();
  Future<Either<Failure, GetMessages>> getAllMessages(
      {required String? chatid});
  Future<String?> getWcUrl({String? chatid});
}

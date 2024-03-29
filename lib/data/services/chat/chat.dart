import 'package:dartz/dartz.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/chat/chat_users_model/chat_users_model.dart';
import 'package:dating_app/domain/modules/chat/get_messages/get_messages.dart';
import 'package:dating_app/domain/repositories/chat_repository.dart';
import 'package:dio/dio.dart';

class ChatApi implements ChatRepository {
  @override
  Future<Either<Failure, ChatUsersModel>> getChatUsers() async {
    final Token = await SharedPref.getToken();
    final accessKey = Token.accessToken;
    final refreshKey = Token.refreshToken;

    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Content-Type": "application/json",
          "Cookie": 'accessToken=$accessKey; refreshToken=$refreshKey',
        },
      ),
    );

    try {
      final response = await dio.get(ApiEndPoints.chat);
      if (response.statusCode == 200) {
        return Right(ChatUsersModel.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure()
            .copyWith(message: ChatUsersModel.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print('Error from $dioError');
      return Left(Failure.serverFailure());
    } catch (e) {
      print('Error---$e');
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GetMessages>> getAllMessages(
      {required String? chatid}) async {
    final Token = await SharedPref.getToken();
    final accessKey = Token.accessToken;
    final refreshKey = Token.refreshToken;

    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Content-Type": "application/json",
          "Cookie": 'accessToken=$accessKey; refreshToken=$refreshKey',
        },
      ),
    );

    try {
      final response = await dio.get('/chat/$chatid/message');
      print('-------get_All_message--response--${response.data}');
      if (response.statusCode == 200) {
        return Right(GetMessages.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure()
            .copyWith(message: GetMessages.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.clientFailure());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioEroor) {
      print(dioEroor.toString());
    } catch (e) {
      print(e.toString());
      // Handle error and return failure
    }
    throw UnimplementedError();
  }

  @override
  Future<String?> getWcUrl({String? chatid}) async {
    final Token = await SharedPref.getToken();
    final accessKey = Token.accessToken;
    final refreshKey = Token.refreshToken;

    final dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Cookie": 'accessToken=$accessKey; refreshToken=$refreshKey',
        },
      ),
    );

    try {
      final response = await dio.get('/ws/$chatid');
      print("--------------ws-----response${response.data}");
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data;
        return data['websocketUrl'];
      } else if (response.statusCode == 400) {
        return '';
      } else {
        throw Exception('Failed to fetch WebSocket URL');
      }
    } on DioException catch (dioError) {
      print(dioError.toString());
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to fetch WebSocket URL');
    }
    throw UnimplementedError();
  }
}

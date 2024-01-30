import 'package:dartz/dartz.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/home_response/home_response.dart';
import 'package:dating_app/domain/repositories/users_repository.dart';
import 'package:dio/dio.dart';

class UsersApi implements UsersRepository {
  @override
  Future<Either<Failure, HomeResponse>> getUsers() async {
    final Token = await SharedPref.getToken();
    final accesskey = Token.accessToken;
    final refreshkey = Token.refreshToken;

    final Dio dio = Dio(
        BaseOptions(baseUrl: ApiEndPoints.baseUrl, headers: <String, dynamic>{
      "accept": "application/json",
      "Content-Type": "multipart/form-data",
      "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
    }));

    try {
      final response = await dio.get(ApiEndPoints.home);

      print(response.data);
      if (response.statusCode == 200) {
        return Right(HomeResponse.fromJson(response.data));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print('-----------------------${dioError.message.toString()}');
      return Left(Failure.serverFailure().copyWith(message: errorMsg));
    } catch (e) {
      print(e.toString());
    }

    throw UnimplementedError();
  }
}

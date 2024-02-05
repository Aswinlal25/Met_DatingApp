import 'package:dartz/dartz.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/edit_uder_preference/edit_uder_preference.dart';
import 'package:dating_app/domain/modules/edit_user_preference/edit_user_preference.dart';
import 'package:dating_app/domain/modules/get_user_preference/get_user_preference.dart';
import 'package:dating_app/domain/modules/home_response/home_response.dart';
import 'package:dating_app/domain/modules/recommented_model/recommented_model.dart';
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

  @override
  Future<Either<Failure, GetUserPreference>> getUserPreference() async {
    final Token = await SharedPref.getToken();
    final accesskey = Token.accessToken;
    final refreshkey = Token.refreshToken;

    final Dio dio = Dio(
        BaseOptions(baseUrl: ApiEndPoints.baseUrl, headers: <String, dynamic>{
      "accept": "application/json",
      "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
    }));

    final response = await dio.get(ApiEndPoints.preference);
    print("----0-0-0-0${response.data}");
    try {
      if (response.statusCode == 200) {
        print(response.statusCode.toString());
        print(
            GetUserPreference.fromJson(response.data).data!.gender.toString());
        return Right(GetUserPreference.fromJson(response.data));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print('Error----- ${dioError.message.toString()}');
    } catch (e) {
      print('Error-----${e.toString()}');
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, EditUserPreferenceResponse>> editUserPreference(
      {required EditUserPreference editUderPreference}) async {
    final Token = await SharedPref.getToken();
    final accesskey = Token.accessToken;
    final refreshkey = Token.refreshToken;

    final Dio dio = Dio(
        BaseOptions(baseUrl: ApiEndPoints.baseUrl, headers: <String, dynamic>{
      "accept": "application/json",
      "Content-Type": "application/json",
      "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
    }));
    print("from api call ---->${editUderPreference.toJson().toString()}");

    try {
      final response = await dio.put(ApiEndPoints.preference,
          data: editUderPreference.toJson());
      print("-1-1-1-1-1-1${response.data}");
      if (response.statusCode == 200) {
        return Right(EditUserPreferenceResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        print(
            "*************${EditUserPreferenceResponse.fromJson(response.data).message!}");
        return Left(Failure.clientFailure().copyWith(
            message:
                EditUserPreferenceResponse.fromJson(response.data).message!));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print('Error -------${dioError.toString()}');
    } catch (e) {
      print('Error -------${e.toString()}');
    }

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, RecommentedModel>> getRecommentedUsers() async {
    final Token = await SharedPref.getToken();
    final accesskey = Token.accessToken;
    final refreshkey = Token.refreshToken;

    final Dio dio = Dio(
        BaseOptions(baseUrl: ApiEndPoints.baseUrl, headers: <String, dynamic>{
      "accept": "application/json",
      "Content-Type": "multipart/form-data",
      "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
    }));

    final response = await dio.get(
      ApiEndPoints.home,
      queryParameters: {'interest': true},
    );

    try {
      if (response.statusCode == 200) {
        return Right(RecommentedModel.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message: RecommentedModel.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print('Error----${dioError.toString()}');
    }
    throw UnimplementedError();
  }
}

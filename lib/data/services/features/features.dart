import 'package:dartz/dartz.dart';
import 'package:dating_app/application/presentation/utils/constant.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/get_likes/get_likes.dart';
import 'package:dating_app/domain/modules/like_model_response/like_model.dart';
import 'package:dating_app/domain/modules/match_model/match_model.dart';
import 'package:dating_app/domain/repositories/features_repository.dart';
import 'package:dio/dio.dart';

class FeaturesApi implements FeaturesRepositiry {
  @override
  Future<Either<Failure, LikeModel>> postlike(int? id) async {
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
      final response = await dio.post(
        "${ApiEndPoints.like}/$id",
      );
      print("---------------Like Response---------${response.data.toString()}");
      final likeModel = LikeModel.fromJson(response.data);
      return Right(likeModel);
    } catch (e) {
      // Handle Dio errors
      print('Error: $e');
      return Left(Failure.serverFailure()); // Return a failure
    }
  }

  @override
  Future<Either<Failure, GetLikes>> getlike() async {
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
      final response = await dio.get(ApiEndPoints.like);
      print("---------------Like Response---------${response.data.toString()}");
      if (response.statusCode == 200) {
        final GetlikeModel = GetLikes.fromJson(response.data);
        return Right(GetlikeModel);
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure());
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } catch (e) {
      print('Error: $e');
      return Left(Failure.serverFailure());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, MatchModel>> getMathes() async {
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
      final response = await dio.get(ApiEndPoints.matches);
      print('response------matches----${response.data}');
      if (response.statusCode == 200) {
        final Matches = MatchModel.fromJson(response.data);
        return Right(Matches);
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure()
            .copyWith(message: MatchModel.fromJson(response.data).message));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print('$dioError');
      return Left(Failure.serverFailure());
    } catch (e) {
      print('Error $e');
    }
    throw UnimplementedError();
  }
}

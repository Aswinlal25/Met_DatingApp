import 'package:dartz/dartz.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/id_querry/id_querry.dart';
import 'package:dating_app/domain/modules/like_model/like_model.dart';
import 'package:dating_app/domain/repositories/features_repository.dart';
import 'package:dio/dio.dart';

class FeaturesApi implements features_repositiry {
  @override
  Future<Either<Failure, LikeModel>> postlike(
      {required IdQuerry idQuerry}) async {
    final Token = await SharedPref.getToken();
    final accesskey = Token.accessToken;
    final refreshkey = Token.refreshToken;

    final Dio dio = Dio(
        BaseOptions(baseUrl: ApiEndPoints.baseUrl, headers: <String, dynamic>{
      "accept": "application/json",
      "Content-Type": "multipart/form-data",
      "Cookie": 'accessToken=$accesskey; refreshToken=$refreshkey',
    }));

    throw UnimplementedError();
  }
}

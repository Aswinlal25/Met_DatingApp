import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/get_likes/get_likes.dart';
import 'package:dating_app/domain/modules/like_model_response/like_model.dart';

abstract class FeaturesRepositiry {
  Future<Either<Failure, LikeModel>> postlike(int? id);
  Future<Either<Failure, GetLikes>> getlike();
}

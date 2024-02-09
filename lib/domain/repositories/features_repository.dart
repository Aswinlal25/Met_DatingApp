import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/id_querry/id_querry.dart';
import 'package:dating_app/domain/modules/like_model/like_model.dart';

abstract class features_repositiry {
  Future<Either<Failure, LikeModel>> postlike({required IdQuerry idQuerry});
}

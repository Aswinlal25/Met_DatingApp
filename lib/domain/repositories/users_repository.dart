import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/home_response/home_response.dart';

abstract class UsersRepository {
  Future<Either<Failure, HomeResponse>> getUsers();
}

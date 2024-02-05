import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/edit_uder_preference/edit_uder_preference.dart';
import 'package:dating_app/domain/modules/edit_user_preference/edit_user_preference.dart';
import 'package:dating_app/domain/modules/get_user_preference/get_user_preference.dart';
import 'package:dating_app/domain/modules/home_response/home_response.dart';
import 'package:dating_app/domain/modules/recommented_model/recommented_model.dart';

abstract class UsersRepository {
  Future<Either<Failure, HomeResponse>> getUsers();

  Future<Either<Failure, GetUserPreference>> getUserPreference();

  Future<Either<Failure, EditUserPreferenceResponse>> editUserPreference(
      {required EditUserPreference editUderPreference});

  Future<Either<Failure, RecommentedModel>> getRecommentedUsers();
}

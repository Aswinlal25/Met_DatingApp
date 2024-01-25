import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/Token/token_model.dart';
import 'package:dating_app/domain/modules/profile/profile_details/profile_details.dart';
import 'package:dating_app/domain/modules/profile/profile_details_model/profile_details_model.dart';
import 'package:dating_app/domain/modules/profile/profile_model/profile_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileDetailsModel>> makeprofile(
      {required ProfileModel profileModel, required TokenModel tokenModel});

  Future<Either<Failure, ProfileDetails>> getprofileDetails();
}

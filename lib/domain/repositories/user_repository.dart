import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/profile/profile_details_model/profile_details_model.dart';
import 'package:dating_app/domain/modules/profile/profile_make_response_model/profile_make_response_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileMakeResponseModel>> makeprofile();

  Future<Either<Failure, ProfileDetailsModel>> getprofileDetails();
}

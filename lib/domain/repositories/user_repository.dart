import 'package:dartz/dartz.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_model/edit_profile_model.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_picture_response/edit_profile_picture_response.dart';
import 'package:dating_app/domain/modules/profile/edit_profile_response/edit_profile_response.dart';
import 'package:dating_app/domain/modules/profile/profile_details_model/profile_details_model.dart';
import 'package:dating_app/domain/modules/profile/profile_make_response_model/profile_make_response_model.dart';
import 'package:dating_app/domain/modules/profile/updated_phone_number_model/updated_phone_number_model.dart';
import 'package:dating_app/domain/modules/profile/updeted_phone_number_response/updeted_phone_number_response.dart';
import 'package:dating_app/domain/modules/profile/verify_updated_number/verify_updated_number.dart';
import 'package:dating_app/domain/modules/profile/verify_updated_number_response/verify_updated_number_response.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileMakeResponseModel>> makeprofile();

  Future<Either<Failure, ProfileDetailsModel>> getprofileDetails();

  Future<Either<Failure, EditProfileResponse>> editprofileDetails(
      {required EditProfileModel editProfileModel});

  Future<Either<Failure, EditProfilePictureResponse>> editprofilepicture();

  Future<Either<Failure, UpdetedPhoneNumberResponse>> editphoneNumber(
      {required UpdatedPhoneNumberModel updatedPhoneNumberModel});
  Future<Either<Failure, VerifyUpdatedNumberResponse>> verifyNewNumbe(
      {required VerifyUpdatedNumber verifyUpdatedNumber});
}

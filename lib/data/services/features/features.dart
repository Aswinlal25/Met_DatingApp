import 'package:dartz/dartz.dart';
import 'package:dating_app/data/shared_preferences/shered_preference.dart';
import 'package:dating_app/domain/core/api_endpoints/api_endpoints.dart';
import 'package:dating_app/domain/core/failures/failures.dart';
import 'package:dating_app/domain/modules/features/block_reson_model/Report_reson_model.dart';
import 'package:dating_app/domain/modules/features/block_response/block_response.dart';
import 'package:dating_app/domain/modules/features/get_plan_details_model/get_plan_details_model.dart';
import 'package:dating_app/domain/modules/features/payment_response/payment_response.dart';
import 'package:dating_app/domain/modules/features/report_response/report_response.dart';
import 'package:dating_app/domain/modules/features/subciption_order_model/subciption_order_model.dart';
import 'package:dating_app/domain/modules/features/subscription_model/subscription_model.dart';
import 'package:dating_app/domain/modules/features/users_order_model/users_order_model.dart';
import 'package:dating_app/domain/modules/features/verify_payment_response/verify_payment_response.dart';
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

  @override
  Future<Either<Failure, ReportResponse>> ReportUser(
      {required ReportResonModel reportResonModel, required int? id}) async {
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
      final repostdata = reportResonModel.toJson();
      final response =
          await dio.post("${ApiEndPoints.report}/$id", data: repostdata);
      if (response.statusCode == 200) {
        return Right(ReportResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message: ReportResonModel.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, BlockResponse>> blockUser(int? id) async {
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
      final response = await dio.post("${ApiEndPoints.block}/$id");
      if (response.statusCode == 200) {
        return Right(BlockResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure()
            .copyWith(message: BlockResponse.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SubscriptionModel>> getSubscriptionPlans() async {
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
      final response = await dio.get(ApiEndPoints.subcription);
      if (response.statusCode == 200) {
        return Right(SubscriptionModel.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message: SubscriptionModel.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UsersOrderModel>> getUserOrders() async {
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
      final response = await dio.get(ApiEndPoints.getUsersOrder);
      print('Current user plan response------${response.data}');
      if (response.statusCode == 200) {
        return Right(UsersOrderModel.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message: UsersOrderModel.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SubciptionOrderModel>> PostOrder({int? subId}) async {
    final Token = await SharedPref.getToken();
    final accessKey = Token.accessToken;
    final refreshKey = Token.refreshToken;

    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Cookie": 'accessToken=$accessKey; refreshToken=$refreshKey',
        },
      ),
    );
    try {
      final response = await dio.post("${ApiEndPoints.makeOrder}/$subId");
      print('--------------------------response ----${response.data}');
      if (response.statusCode == 200) {
        return Right(SubciptionOrderModel.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message: UsersOrderModel.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } on DioException catch (dioError) {
      print(dioError.toString());
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GetPlanDetailsModel>> getPlanDetails(
      {int? subId}) async {
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
      final response = await dio.get("${ApiEndPoints.getUsersOrder}/$subId");
      if (response.statusCode == 200) {
        return Right(GetPlanDetailsModel.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message: UsersOrderModel.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PaymentResponse>> makePayment({int? orderId}) async {
    final Token = await SharedPref.getToken();
    final accessKey = Token.accessToken;
    final refreshKey = Token.refreshToken;

    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Cookie": 'accessToken=$accessKey; refreshToken=$refreshKey',
        },
      ),
    );
    try {
      final response = await dio.get("${ApiEndPoints.payment}/$orderId");
      print('response ---payment${response.data}');

      // Parse JSON response
      if (response.statusCode == 200) {
        return Right(PaymentResponse.fromJson(response.data));
      } else if (response.statusCode == 400) {
        return Left(Failure.clientFailure().copyWith(
            message: PaymentResponse.fromJson(response.data).message));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, VerifyPaymentResponse>> verifyPayment(
      {required int? orderId,
      required String? paymentId,
      required String? signature}) async {
    final Token = await SharedPref.getToken();
    final accessKey = Token.accessToken;
    final refreshKey = Token.refreshToken;

    final Dio dio = Dio(
      BaseOptions(
        baseUrl: ApiEndPoints.baseUrl,
        headers: <String, dynamic>{
          "accept": "application/json",
          "Cookie": 'accessToken=$accessKey; refreshToken=$refreshKey',
        },
      ),
    );

    try {
      final response = await dio.get(
          '${ApiEndPoints.verifyPayment}?order_id=${orderId}&payment_id=${paymentId}&signature=${signature}');
      print('response ---Verifypayment${response.data}');
      ;

      if (response.headers.map['content-type']?.contains('application/json') ??
          false) {
        if (response.statusCode == 200) {
          return Right(VerifyPaymentResponse.fromJson(response.data));
        } else if (response.statusCode == 400) {
          return Left(Failure.clientFailure().copyWith(
              message: VerifyPaymentResponse.fromJson(response.data).message));
        } else if (response.statusCode == 401) {
          return Left(Failure.tokenExpire());
        } else if (response.statusCode == 500) {
          return Left(Failure.serverFailure());
        }
      } else {
        return Left(Failure.serverFailure()
            .copyWith(message: response.data.toString()));
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }
}

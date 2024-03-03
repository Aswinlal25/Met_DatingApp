import 'package:dartz/dartz.dart';
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

abstract class FeaturesRepositiry {
  Future<Either<Failure, LikeModel>> postlike(int? id);
  Future<Either<Failure, GetLikes>> getlike();
  Future<Either<Failure, MatchModel>> getMathes();
  Future<Either<Failure, BlockResponse>> blockUser(int? id);
  Future<Either<Failure, ReportResponse>> ReportUser(
      {required ReportResonModel reportResonModel, required int? id});

  Future<Either<Failure, SubscriptionModel>> getSubscriptionPlans();
  Future<Either<Failure, UsersOrderModel>> getUserOrders();
  Future<Either<Failure, GetPlanDetailsModel>> getPlanDetails({int? subId});
  Future<Either<Failure, SubciptionOrderModel>> PostOrder({int? subId});
  Future<Either<Failure, PaymentResponse>> makePayment({int? orderId});
  Future<Either<Failure, VerifyPaymentResponse>> verifyPayment(
      {required int? orderId,
      required String? paymentId,
      required String? signature});
}

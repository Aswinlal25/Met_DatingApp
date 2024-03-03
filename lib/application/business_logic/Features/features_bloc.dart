import 'package:bloc/bloc.dart';
import 'package:dating_app/domain/modules/chat/get_messages/get_messages.dart';
import 'package:dating_app/domain/modules/features/block_reson_model/Report_reson_model.dart';
import 'package:dating_app/domain/modules/features/block_response/block_response.dart';
import 'package:dating_app/domain/modules/features/get_plan_details_model/get_plan_details_model.dart';
import 'package:dating_app/domain/modules/features/payment_response/payment_response.dart';
import 'package:dating_app/domain/modules/features/report_response/report_response.dart';
import 'package:dating_app/domain/modules/features/subciption_order_model/subciption_order_model.dart';
import 'package:dating_app/domain/modules/features/subscription_model/subscription_model.dart';
import 'package:dating_app/domain/modules/features/users_order_model/users_order_model.dart';
import 'package:dating_app/domain/modules/get_likes/get_likes.dart';
import 'package:dating_app/domain/modules/match_model/match_model.dart';
import 'package:dating_app/domain/repositories/features_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'features_event.dart';
part 'features_state.dart';
part 'features_bloc.freezed.dart';

class FeaturesBloc extends Bloc<FeaturesEvent, FeaturesState> {
  final FeaturesRepositiry featuresRepositiry;
  FeaturesBloc(this.featuresRepositiry) : super(FeaturesState.initial()) {
    on<_GetLikes>(
      (event, emit) async {
        emit(state.copyWith());
        final result = await featuresRepositiry.getlike();

        result.fold(
          (failure) {
            emit(state.copyWith(
              getLikesisLoading: false,
              message: 'something went wrong',
            ));
          },
          (getLikes) {
            emit(state.copyWith(
              getLikesisLoading: false,
              getLikes: getLikes,
            ));
          },
        );
      },
    );
    on<_GetMatches>(
      (event, emit) async {
        emit(state.copyWith(getMatchdataLoading: true));
        emit(state.copyWith());
        final result = await featuresRepositiry.getMathes();

        result.fold(
          (failure) {
            emit(state.copyWith(
              getMatchdataLoading: false,
              message: 'something went wrong',
            ));
          },
          (getMatches) {
            emit(state.copyWith(
              getMatchdataLoading: false,
              matchModel: getMatches,
            ));
          },
        );
      },
    );
    on<_ReportUsers>((event, emit) async {
      final result = await featuresRepositiry.ReportUser(
          reportResonModel: event.reportResonModel, id: event.id);

      result.fold((errorMssg) {
        emit(state.copyWith(dataHasError: false, message: errorMssg.message));
      }, (reportResponse) async {
        emit(state.copyWith(
            dataisLoading: false, reportResponse: reportResponse));
      });
    });

    on<_GetSubcriptionPlans>(
      (event, emit) async {
        emit(state.copyWith());
        final result = await featuresRepositiry.getSubscriptionPlans();

        result.fold(
          (failure) {
            emit(state.copyWith(
              getLikesisLoading: false,
              message: 'something went wrong',
            ));
          },
          (plans) {
            emit(state.copyWith(
              getLikesisLoading: false,
              subscriptionModel: plans,
            ));
          },
        );
      },
    );
    on<_GetPlanDetails>(
      (event, emit) async {
        emit(state.copyWith());
        final result =
            await featuresRepositiry.getPlanDetails(subId: event.subId);

        result.fold(
          (failure) {
            emit(state.copyWith(
              getLikesisLoading: false,
              message: 'something went wrong',
            ));
          },
          (plansDetails) {
            emit(state.copyWith(
              getLikesisLoading: false,
              getPlanDetailsModel: plansDetails,
            ));
          },
        );
      },
    );
    on<_GetUserOrder>(
      (event, emit) async {
        emit(state.copyWith());
        final result = await featuresRepositiry.getUserOrders();

        result.fold(
          (failure) {
            emit(state.copyWith(
              getLikesisLoading: false,
              message: 'something went wrong',
            ));
          },
          (usersOrderModel) {
            emit(state.copyWith(
              getLikesisLoading: false,
              usersOrderModel: usersOrderModel,
            ));
          },
        );
      },
    );

    on<_OrderSubscription>(
      (event, emit) async {
        emit(state.copyWith());
        final result = await featuresRepositiry.PostOrder(subId: event.subId);

        result.fold(
          (failure) {
            emit(state.copyWith(
              getLikesisLoading: false,
              message: 'something went wrong',
            ));
          },
          (placeOrder) {
            emit(state.copyWith(
              getLikesisLoading: false,
              subciptionOrderModel: placeOrder,
            ));
          },
        );
      },
    );
    on<_Makepayment>(
      (event, emit) async {
        emit(state.copyWith());
        final result =
            await featuresRepositiry.makePayment(orderId: event.orderId);

        result.fold(
          (failure) {
            emit(state.copyWith(
              getLikesisLoading: false,
              message: 'something went wrong',
            ));
          },
          (payment) {
            emit(state.copyWith(
              getLikesisLoading: false,
              paymentResponse: payment,
            ));
          },
        );
      },
    );
  }
}

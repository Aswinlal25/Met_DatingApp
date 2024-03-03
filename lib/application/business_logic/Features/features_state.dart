part of 'features_bloc.dart';

@freezed
class FeaturesState with _$FeaturesState {
  const factory FeaturesState(
      {required bool getLikesHasError,
      required bool getLikesisLoading,
      required bool getMatchdataLoading,
      required bool getMatchdataHasError,
      required bool dataHasError,
      required bool dataisLoading,
      String? message,
      GetLikes? getLikes,
      MatchModel? matchModel,
      BlockResponse? blockResponse,
      ReportResonModel? reportResonModel,
      ReportResponse? reportResponse,
      GetMessages? getMessages,
      SubscriptionModel? subscriptionModel,
      GetPlanDetailsModel? getPlanDetailsModel,
      UsersOrderModel? usersOrderModel,
      SubciptionOrderModel? subciptionOrderModel,
      PaymentResponse? paymentResponse}) = _Initial;

  factory FeaturesState.initial() => FeaturesState(
      getLikesisLoading: false,
      getLikesHasError: false,
      getMatchdataLoading: false,
      getMatchdataHasError: false,
      dataHasError: false,
      dataisLoading: false);
}

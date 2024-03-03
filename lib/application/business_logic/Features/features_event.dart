part of 'features_bloc.dart';

@freezed
class FeaturesEvent with _$FeaturesEvent {
  factory FeaturesEvent.getLikes() = _GetLikes;
  factory FeaturesEvent.getMatches() = _GetMatches;
  factory FeaturesEvent.reportUsers(
      {required ReportResonModel reportResonModel,
      required int? id}) = _ReportUsers;
  factory FeaturesEvent.getSubcriptionPlans() = _GetSubcriptionPlans;
  factory FeaturesEvent.getPlanDetails({int? subId}) = _GetPlanDetails;
  factory FeaturesEvent.getUserOrder() = _GetUserOrder;
  factory FeaturesEvent.orderSubscription({int? subId}) = _OrderSubscription;
  factory FeaturesEvent.makepayment({int? orderId}) = _Makepayment;
}

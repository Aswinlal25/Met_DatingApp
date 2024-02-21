part of 'features_bloc.dart';

@freezed
class FeaturesState with _$FeaturesState {
  const factory FeaturesState({
    required bool getLikesHasError,
    required bool getLikesisLoading,
    required bool getMatchdataLoading,
    required bool getMatchdataHasError,
    String? message,
    GetLikes? getLikes,
    MatchModel? matchModel,
  }) = _Initial;

  factory FeaturesState.initial() => FeaturesState(
      getLikesisLoading: false,
      getLikesHasError: false,
      getMatchdataLoading: false,
      getMatchdataHasError: false);
}

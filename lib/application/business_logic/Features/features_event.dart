part of 'features_bloc.dart';

@freezed
class FeaturesEvent with _$FeaturesEvent {
  factory FeaturesEvent.getLikes() = _GetLikes;
  factory FeaturesEvent.getMatches() = _GetMatches;
}

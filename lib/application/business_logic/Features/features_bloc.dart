import 'package:bloc/bloc.dart';
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
  }
}

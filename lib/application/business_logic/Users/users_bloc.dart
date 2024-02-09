import 'package:bloc/bloc.dart';
import 'package:dating_app/domain/modules/edit_uder_preference/edit_uder_preference.dart';
import 'package:dating_app/domain/modules/edit_user_preference/edit_user_preference.dart';
import 'package:dating_app/domain/modules/get_user_preference/get_user_preference.dart';
import 'package:dating_app/domain/modules/home_response/home_response.dart';
import 'package:dating_app/domain/modules/recommented_model/recommented_model.dart';
import 'package:dating_app/domain/repositories/users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_bloc.freezed.dart';
part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final UsersRepository usersRepository;
  UsersBloc(this.usersRepository) : super(UsersState.initial()) {
    on<_Gethomedata>(
      (event, emit) async {
        print('function is okey');
        emit(state.copyWith(homedataisLoading: true));
        final result = await usersRepository.getUsers();
        print('function is okey------------------------>>${result.toString()}');
        result.fold((failure) {
          emit(state.copyWith(
              homedataisLoading: false, message: 'something went wrong'));
        }, (homeResponse) {
          emit(state.copyWith(
              homedataisLoading: false, homeResponse: homeResponse));
        });
      },
    );
    on<_Getprefrence>(
      (event, emit) async {
        print('Function is okay----------');
        emit(state.copyWith(prefrencedataisLoading: true));
        print('2nd function is okay--${state.prefrencedataisLoading}');

        final result = await usersRepository.getUserPreference();

        print("Result: ${result.toString()}");

        result.fold(
          (error) {
            print('There is an error: $error');
            emit(state.copyWith(
              prefrencedataisLoading: false,
              message: 'Failed to retrieve user preferences. Please try again.',
            ));
          },
          (getUserPreference) {
            final data = getUserPreference.data;
            print("Function is okay - Data: ${data?.toString() ?? "null"}");

            emit(state.copyWith(
              prefrencedataisLoading: false,
              getUserPreference: getUserPreference,
            ));
          },
        );
      },
    );

    on<_Editprefrence>(
      (event, emit) async {
        try {
          print('Function is okay');
          emit(state.copyWith(editdataisLoading: true));
          final result = await usersRepository.editUserPreference(
            editUderPreference: event.editUserPreference,
          );

          result.fold(
            (failure) {
              print('Error: $failure');
              emit(
                state.copyWith(
                  editdataisLoading: false,
                  message: 'Something went wrong: ${failure.message}',
                ),
              );
            },
            (editUserPreferenceResponse) {
              print(
                  'Edit User Preference Response: $editUserPreferenceResponse');
              emit(
                state.copyWith(
                  editdataisLoading: false,
                  editUserPreferenceResponse: editUserPreferenceResponse,
                ),
              );
            },
          );
        } catch (e) {
          print('Error: $e');
          emit(
            state.copyWith(
              editdataisLoading: false,
              message: 'An unexpected error occurred: $e',
            ),
          );
        }
      },
    );
    on<_GetRecommentdata>(
      (event, emit) async {
        print('function is okey');
        emit(state.copyWith(homedataisLoading: true));

        // Call the function to get the recommended users
        final result = await usersRepository.getRecommentedUsers();

        print('function is okey------------------------>>${result.toString()}');
        result.fold(
          (failure) {
            emit(state.copyWith(
              homedataisLoading: false,
              message: 'something went wrong',
            ));
          },
          (recommentUsers) {
            emit(state.copyWith(
              homedataisLoading: false,
              recommentedModel: recommentUsers,
            ));
          },
        );
      },
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:dating_app/domain/modules/home_response/home_response.dart';
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
        result.fold((errorMssg) {
          emit(state.copyWith(
              homedataisLoading: false, message: errorMssg.message));
        }, (homeResponse) {
          emit(state.copyWith(
              homedataisLoading: false, homeResponse: homeResponse));
        });
      },
    );
  }
}

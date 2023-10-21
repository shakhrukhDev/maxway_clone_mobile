import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:maxway_clone/src/data/models/auth/login_request.dart';
import 'package:meta/meta.dart';
import 'package:maxway_clone/src/data/models/auth/check_phone_response.dart';
import 'package:maxway_clone/src/data/models/auth/registr_phone_request.dart';
import 'package:maxway_clone/src/domain/repositories/auth_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authRepository}) : super(const AuthState()) {
    on<CheckPhoneEvent>(_checkPhoneEvent);
  }

  final AuthRepository authRepository;

  Future<void> _checkPhoneEvent(
    CheckPhoneEvent event,
    Emitter<AuthState> emit,
  ) async {
    final result = await authRepository.login(LoginRequest(phone: event.phone));
    result.fold((left) {
      if (left.code == 404) {
        /// 1. registration(input name)
        /// 2. verification(register_confirm)
        /// 3. main
        ///
        ///
        ///
        emit(state.copyWith(registration: true));
      } else {
        /// show message
        state.copyWith(status: Status.error);
      }
    }, (right) {
      /// 1. verification(login_confirm)
      /// 2. main
    });
  }
}

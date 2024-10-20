import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:salaty/auth/formz/formz.dart';
import 'package:salaty/auth/graphql/login.graphql.dart';
import 'package:salaty/schema.graphql.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GraphQLClient _client;

  AuthBloc(this._client) : super(const AuthState()) {
    on<OnUsernameChanged>(_onUsernameChanged);
    on<OnPasswordChanged>(_onPasswordChanged);
    on<OnLoginSubmitted>(_onLoginSubmitted);
  }

  FutureOr<void> _onUsernameChanged(
    OnUsernameChanged event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(usernameInput: UsernameInput.dirty(event.username)));
  }

  FutureOr<void> _onPasswordChanged(
    OnPasswordChanged event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(passwordInput: PasswordInput.dirty(event.password)));
  }

  FutureOr<void> _onLoginSubmitted(
    OnLoginSubmitted event,
    Emitter<AuthState> emit,
  ) async {
    if (Formz.validate(state.inputs)) {
      return;
    }
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final result = await _client.mutate$login(
      Options$Mutation$login(
        variables: Variables$Mutation$login(
          input: Input$LoginInput(
            username: state.usernameInput.value!,
            password: state.passwordInput.value!,
          ),
        ),
      ),
    );
    if (result.hasException) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
      return;
    }
    if (result.parsedData!.login.errors.isNotEmpty) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          error: result.parsedData!.login.errors.first.message,
        ),
      );
      return;
    }

    await Hive.box('jwt').put('token', result.parsedData!.login.token);

    emit(state.copyWith(status: FormzSubmissionStatus.success));
  }
}

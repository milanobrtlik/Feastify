part of 'auth_bloc.dart';

class AuthState {
  final FormzSubmissionStatus status;
  final UsernameInput usernameInput;
  final PasswordInput passwordInput;
  final String? error;

  const AuthState({
    this.status = FormzSubmissionStatus.initial,
    this.usernameInput = const UsernameInput.pure(),
    this.passwordInput = const PasswordInput.pure(),
    this.error,
  });

  AuthState copyWith({
    FormzSubmissionStatus? status,
    UsernameInput? usernameInput,
    PasswordInput? passwordInput,
    String? error,
  }) {
    return AuthState(
      status: status ?? this.status,
      usernameInput: usernameInput ?? this.usernameInput,
      passwordInput: passwordInput ?? this.passwordInput,
      error: error,
    );
  }

  List<FormzInput> get inputs => [usernameInput, passwordInput];
}

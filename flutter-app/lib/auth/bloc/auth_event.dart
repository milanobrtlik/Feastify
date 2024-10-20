part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnUsernameChanged extends AuthEvent {
  OnUsernameChanged(this.username);

  final String username;

  @override
  List<Object?> get props => [username];
}

class OnPasswordChanged extends AuthEvent {
  OnPasswordChanged(this.password);

  final String password;

  @override
  List<Object?> get props => [password];
}

class OnLoginSubmitted extends AuthEvent {}

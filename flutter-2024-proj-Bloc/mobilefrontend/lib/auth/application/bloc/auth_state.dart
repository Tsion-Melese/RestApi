import 'package:equatable/equatable.dart';
import 'package:mobilefrontend/auth/domain/model/registration_model.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {
  final RegistrationData user;

  const AuthAuthenticated(this.user);

  @override
  List<Object> get props => [user];
}

class AuthError extends AuthState {
  final String message;

  const AuthError(this.message);

  @override
  List<Object> get props => [message];
}

class AuthRegistrationSuccess extends AuthState {
  const AuthRegistrationSuccess();

  @override
  List<Object> get props => [];
}

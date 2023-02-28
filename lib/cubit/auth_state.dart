part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

// class yang digunakan untuk handle state loading
class AuthLoading extends AuthState {}

// ketika sukses melakukan authentication
class AuthSuccess extends AuthState {
  final UserModel user;

  AuthSuccess(this.user);

  @override
  List<Object> get props => [user];
}

class AuthFailed extends AuthState {
  final String error;
  AuthFailed(this.error);

  @override
  List<Object> get props => [error];
}

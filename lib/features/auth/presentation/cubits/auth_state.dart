part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();
  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}
final class LoginLoadingState extends AuthState {}
final class LoginLoadedState extends AuthState {}
final class LoginErrorState extends AuthState {
  final Failure failure;
  const LoginErrorState(this.failure);
}

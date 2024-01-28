part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class LoadingState extends AuthState {}
final class ErrorState extends AuthState {}
final class SentState extends AuthState {}
final class VerifiesState extends AuthState {}
final class LogInState extends AuthState {}
final class LogOutState extends AuthState {}

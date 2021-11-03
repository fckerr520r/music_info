part of 'log_check_cubit.dart';

@immutable
abstract class UserCheckState {}

class UserCheckInitial extends UserCheckState {
  
}

class UserCheckYep extends UserCheckState {}

class UserCheckLoading extends UserCheckState {}

class UserCheckNop extends UserCheckState {}

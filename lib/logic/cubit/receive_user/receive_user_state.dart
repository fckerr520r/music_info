part of 'receive_user_cubit.dart';

@immutable
abstract class ReceiveUserState {}

class ReceiveUserInitial extends ReceiveUserState {}

class ReceiveUserComplete extends ReceiveUserState {
  final User? user;

  ReceiveUserComplete(this.user);
}
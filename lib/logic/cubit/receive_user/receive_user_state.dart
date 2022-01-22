part of 'receive_user_cubit.dart';

@freezed
class ReceiveUserState with _$ReceiveUserState{
  const factory ReceiveUserState.loading() = _ReceiveUserInitialState;
  const factory ReceiveUserState.loaded(User? user) = _ReceiveUserLoadedState;
  const factory ReceiveUserState.error() = _ReceiveUserErrorState;
}
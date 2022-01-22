part of 'log_check_cubit.dart';

@freezed
class UserCheckState with _$UserCheckState {
  const factory UserCheckState.loading() = _UserCheckLoadingState;
  const factory UserCheckState.logged() = _UserCheckLoggedState;
  const factory UserCheckState.notLogged() = _UserCheckNotLoggedState;
}
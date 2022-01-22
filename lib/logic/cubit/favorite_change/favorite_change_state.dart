part of 'favorite_change_cubit.dart';

@freezed
class FavoriteChangeState with _$FavoriteChangeState {
  const factory FavoriteChangeState.initial() = _FavoriteChangeInitialState;
  const factory FavoriteChangeState.loaded({required bool isFavorite}) =
      FavoriteChangeLoadedState;
  const factory FavoriteChangeState.remove() = FavoriteChangeRemoveState;
  const factory FavoriteChangeState.add() = FavoriteChangeAddState;
  const factory FavoriteChangeState.error() = FavoriteChangeErrorState;
}

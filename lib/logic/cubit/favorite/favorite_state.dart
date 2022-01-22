part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState{
  const factory FavoriteState.loaded(List<Song> favoriteList) = _FavoriteLoadedState;
  const factory FavoriteState.loading() = _FavoriteLoadingState;
  const factory FavoriteState.error() = _FavoriteErrorState;
  const factory FavoriteState.noFound() = _FavoriteNoFoundState;
}
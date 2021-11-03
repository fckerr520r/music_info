part of 'favorite_cubit.dart';

@immutable
abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteCompleted extends FavoriteState {
  final List<Song> favoriteList;

  FavoriteCompleted(this.favoriteList);
}

class FavoriteLoading extends FavoriteState {}

class FavoriteNoFind extends FavoriteState {}

class FavoriteError extends FavoriteState {}

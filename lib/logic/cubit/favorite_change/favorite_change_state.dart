part of 'favorite_change_cubit.dart';

@immutable
abstract class FavoriteChangeState {}

class FavoriteChangeInitial extends FavoriteChangeState {}

class FavoriteChangeComplete extends FavoriteChangeState {
  final bool isFavorite;

  FavoriteChangeComplete({required this.isFavorite});
}

class FavoriteChangeRemove extends FavoriteChangeState {}

class FavoriteChangeAdd extends FavoriteChangeState {}

class FavoriteChangeError extends FavoriteChangeState {}


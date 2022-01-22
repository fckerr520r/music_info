import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/repositories/favorite_repository.dart';

part 'favorite_change_state.dart';
part 'favorite_change_cubit.freezed.dart';

class FavoriteChangeCubit extends Cubit<FavoriteChangeState> {
  FavoriteChangeCubit({required this.favoriteRepository})
      : super(const FavoriteChangeState.initial());

  final FavoriteSongRepository favoriteRepository;

  Future addFavorite(int songId) async {
    if (await favoriteRepository.addFavoriteSongs(songId) == true) {
      emit(const FavoriteChangeState.add());
      emit(const FavoriteChangeState.loaded(isFavorite: true));
    } else {
      emit(const FavoriteChangeState.error());
      emit(const FavoriteChangeState.loaded(isFavorite: false));
    }
  }

  Future removeFavorite(int songId) async {
    await favoriteRepository.deleteFavoriteSongs(songId);
    emit(const FavoriteChangeState.remove());
    emit(const FavoriteChangeState.loaded(isFavorite: false));
  }

  Future checkFavorite(int songId) async {
    if (await favoriteRepository.checkFavoriteSongs(songId) == true) {
      emit(const FavoriteChangeState.loaded(isFavorite: true));
    } else {
      emit(const FavoriteChangeState.loaded(isFavorite: false));
    }
  }
}

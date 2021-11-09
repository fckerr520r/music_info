import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/repositories/favorite_repository.dart';

part 'favorite_change_state.dart';

class FavoriteChangeCubit extends Cubit<FavoriteChangeState> {
  FavoriteChangeCubit({required this.favoriteRepository})
      : super(FavoriteChangeInitial());

  final FavoriteSongRepository favoriteRepository;

  Future addFavorite(int songId) async {
    if (await favoriteRepository.addFavoriteSongs(songId) == true) {
      emit(FavoriteChangeAdd());
      emit(FavoriteChangeComplete(isFavorite: true));
    } else {
      emit(FavoriteChangeError());
      emit(FavoriteChangeComplete(isFavorite: false));
    }
  }

  Future removeFavorite(int songId) async {
    await favoriteRepository.deleteFavoriteSongs(songId);
    emit(FavoriteChangeRemove());
    emit(FavoriteChangeComplete(isFavorite: false));
  }

  Future checkFavorite(int songId) async {
    if (await favoriteRepository.checkFavoriteSongs(songId) == true) {
      emit(FavoriteChangeComplete(isFavorite: true));
    } else {
      emit(FavoriteChangeComplete(isFavorite: false));
    }
  }
}

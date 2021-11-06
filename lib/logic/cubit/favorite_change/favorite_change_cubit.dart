import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/repositories/favorite_repository.dart';

part 'favorite_change_state.dart';

class FavoriteChangeCubit extends Cubit<FavoriteChangeState> {
  FavoriteChangeCubit({required this.favoriteRepository})
      : super(FavoriteChangeInitial());

  final FavoriteSongRepository favoriteRepository;

  addFavorite(int songId) async {
    if (await favoriteRepository.addFavoriteSongs(songId) == true) {
      emit(FavoriteChangeAdd());
      emit(FavoriteChangeComplete(true));
    }
    emit(FavoriteChangeError());
    emit(FavoriteChangeComplete(false));
  }

  removeFavorite(int songId) async {
    await favoriteRepository.deleteFavoriteSongs(songId);
    emit(FavoriteChangeRemove());
    emit(FavoriteChangeComplete(false));
  }

  checkFavorite(int songId) async {
    if (await favoriteRepository.checkFavoriteSongs(songId) == true) {
      emit(FavoriteChangeComplete(true));
    } else
      emit(FavoriteChangeComplete(false));
  }
}

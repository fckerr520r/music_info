import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/song.dart';
import 'package:music_lyrics/service/repositories/favorite_repository.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({required this.favoriteRepository}) : super(FavoriteInitial()) {
    receiveFavoriteSong();
  }

  final FavoriteSongRepository favoriteRepository;
  Future receiveFavoriteSong() async {
    emit(FavoriteLoading());
    try {
      emit(FavoriteCompleted(await favoriteRepository.receiveFavoriteSongs()));
    } on Exception {
      emit(FavoriteError());
    }
  }
}

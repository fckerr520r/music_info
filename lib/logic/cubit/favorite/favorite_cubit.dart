import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/song_model/song_model.dart';
import 'package:music_lyrics/service/repositories/favorite_repository.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({required this.favoriteRepository}) : super(const FavoriteState.loading()) {
    receiveFavoriteSong();
  }

  final FavoriteSongRepository favoriteRepository;
  Future receiveFavoriteSong() async {
    emit(const FavoriteState.loading());
    try {
      emit(FavoriteState.loaded(await favoriteRepository.receiveFavoriteSongs()));
    } on Exception {
      emit(const FavoriteState.error());
    }
  }
}

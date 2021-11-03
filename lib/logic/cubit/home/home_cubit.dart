import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/artist.dart';
import 'package:music_lyrics/service/models/song.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.repository}) : super(HomeInitial()) {
    receiveLists();
  }

  final GeniusRepository repository;
  
  Future receiveLists() async {
    try {
      emit(HomeLoading());
      await Future.wait([
        repository.getListSong().then((result) {
          final s = state;
          if (s is HomeCompleted) {
            emit(s.copyWith(listTopSongs: result));
            return result;
          }
          emit(HomeCompleted(listTopSongs: result));
          return result;
        }),
        repository.getTopCounrtySong().then((result) {
          final s = state;
          if (s is HomeCompleted) {
            emit(s.copyWith(listTopCounrtySong: result));
            return result;
          }
          emit(HomeCompleted(listTopCounrtySong: result));
          return result;
        }),
        repository.getListArtist().then((result) {
          final s = state;
          if (s is HomeCompleted) {
            emit(s.copyWith(listTopArtists: result));
            return result;
          }
          emit(HomeCompleted(listTopArtists: result));
          return result;
        }),
      ]);
    } catch (e) {
      emit(HomeError());
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/artist.dart';
import 'package:music_lyrics/service/models/universal_models/brief_song.dart';
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
        repository.receiveChartTracksList(countryCode: 'us', needUpdate: false).then((result) {
          final s = state;
          if (s is HomeCompleted) {
            emit(s.copyWith(listRandomTopSongs: result));
            return result;
          }
          emit(HomeCompleted(listRandomTopSongs: result));
          return result;
        }),
        repository.receiveChartTracksList(countryCode: 'ru', needUpdate: false).then((result) {
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
    } on Exception {
      emit(HomeError());
    }
  }

  Future updateLists() async {
    try {
      emit(HomeLoading());
      await Future.wait([
        repository.receiveChartTracksList(countryCode: 'us', needUpdate: true).then((result) {
          final s = state;
          if (s is HomeCompleted) {
            emit(s.copyWith(listRandomTopSongs: result));
            return result;
          }
          emit(HomeCompleted(listRandomTopSongs: result));
          return result;
        }),
        repository.receiveChartTracksList(countryCode: 'ru', needUpdate: true).then((result) {
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
    } on Exception {
      emit(HomeError());
    }
  }
}
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/artist.dart';
import 'package:music_lyrics/service/models/universal_models/brief_song.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';
import 'package:music_lyrics/service/repositories/random_country_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.repository}) : super(HomeInitial()) {
    receiveLists();
  }

  final GeniusRepository repository;
  Future receiveLists() async {
    try {
      emit(HomeLoading());
      final country = RandomCountry().randomCountry();
      await loadLists(country: country, needUpdate: false);
    } on Exception {
      emit(HomeError());
    }
  }

  Future updateLists() async {
    try {
      emit(HomeLoading());
      final country = RandomCountry().randomCountry();
      await loadLists(country: country);
    } on Exception {
      emit(HomeError());
    }
  }

  Future loadLists({
    bool needUpdate = true,
    required CountriesMusixmatch country,
  }) async {
    await Future.wait([
      repository
          .receiveChartTracksList(
        countryCode: country.countryCode,
        needUpdate: needUpdate,
        countryName: country.countryName,
        cacheName: 'randomSongList',
      )
          .then((result) {
        final s = state;
        if (s is HomeCompleted) {
          emit(s.copyWith(listRandomTopSongs: result));
          return result;
        }
        emit(HomeCompleted(listRandomTopSongs: result));
        return result;
      }),
      repository
          .receiveChartTracksList(
        countryCode: 'ru',
        needUpdate: needUpdate,
        countryName: 'Russia',
        cacheName: 'localSongList',
      )
          .then((result) {
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
  }
}

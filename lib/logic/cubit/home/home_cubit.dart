import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/artist_model/artist_model.dart';
import 'package:music_lyrics/service/models/universal_models/brief_song.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';
import 'package:music_lyrics/service/repositories/random_country_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.repository}) : super(const HomeState.loading()) {
    receiveLists();
  }

  final GeniusRepository repository;
  Future receiveLists() async {
    try {
      emit(const HomeState.loading());
      final country = RandomCountry().randomCountry();
      await loadLists(country: country, needUpdate: false);
    } on Exception {
      emit(const HomeState.error());
    }
  }

  Future updateLists() async {
    try {
      emit(const HomeState.loading());
      final country = RandomCountry().randomCountry();
      await loadLists(country: country);
    } on Exception {
      emit(const HomeState.error());
    }
  }

  Future loadLists({
    bool needUpdate = true,
    required CountriesMusixmatch country,
  }) async {
    await Future.wait(
      [
        repository
            .receiveChartTracksList(
          countryCode: country.countryCode,
          needUpdate: needUpdate,
          countryName: country.countryName,
          cacheName: 'randomSongList',
        )
            .then(
          (result) {
            final s = state;
            if (s is HomeLoadedState) {
              emit(s.copyWith(listRandomTopSongs: result));
              return result;
            }
            emit(HomeState.loaded(listRandomTopSongs: result));
            return result;
          },
        ),
        repository
            .receiveChartTracksList(
          countryCode: 'ru',
          needUpdate: needUpdate,
          countryName: 'Russia',
          cacheName: 'localSongList',
        )
            .then(
          (result) {
            final s = state;
            if (s is HomeLoadedState) {
              emit(s.copyWith(listTopCounrtySong: result));
              return result;
            }
            emit(HomeState.loaded(listTopCounrtySong: result));
            return result;
          },
        ),
        repository.getListArtist().then(
          (result) {
            final s = state;
            if (s is HomeLoadedState) {
              emit(s.copyWith(listTopArtists: result));
              return result;
            }
            emit(HomeState.loaded(listTopArtists: result));
            return result;
          },
        ),
      ],
    );
  }
}
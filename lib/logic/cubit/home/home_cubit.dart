import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/artist.dart';
import 'package:music_lyrics/service/models/song.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()){
    receiveLists();
  }

  List<ArtistClass> listTopArtists = [];
  List<Song> listTopSongs = [];
  List<Song> listTopCounrtySong = [];

  Future receiveLists() async {
    try {
      emit(HomeLoading());
      await Future.wait([
        GeniusRepository()
            .getListArtist()
            .then((result) => listTopArtists = result),
        GeniusRepository()
            .getListSong()
            .then((result) => listTopSongs = result),
        GeniusRepository()
            .getTopCounrtySong()
            .then((result) => listTopCounrtySong = result),
      ]);
      emit(HomeCompleted(listTopArtists, listTopSongs, listTopCounrtySong));
    } catch (e) {
      emit(HomeError());
    }
  }

  // Future receiveLists() async {
  //   try {
  //     emit(HomeLoading());
  //     emit(HomeCompleted(
  //         await GeniusRepository().getListArtist(),
  //         await GeniusRepository().getTopCounrtySong(),
  //         await GeniusRepository().getListSong()));
  //   } catch (e) {
  //     emit(HomeError());
  //   }
  // }
}

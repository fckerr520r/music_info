import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/artist_model/artist_model.dart';
import 'package:music_lyrics/service/models/genius_models/artist_social_data.dart';
import 'package:music_lyrics/service/models/genius_models/artist_tracks_model/artist_tracks_model.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';

part 'artist_state.dart';
part 'artist_cubit.freezed.dart';

class ArtistCubit extends Cubit<ArtistState> {
  ArtistCubit({required this.repository}) : super(const ArtistState.loading());

  final GeniusRepository repository;
  late final List<SongA> listArtistSongs;
  late final ArtistFullInfo artist;
  late final List<SocialData> socials;

  Future<void> getAtristInfo(int artistId) async {
    try {
      emit(const ArtistState.loading());
      await Future.wait([
        repository.getArtist(artistId).then((result) => artist = result),
        repository
            .getArtistTrack(artistId)
            .then((result) => listArtistSongs = result),
        repository
            .getArtistSocials(artistId)
            .then((result) => socials = result),
      ]);
      if (artist.alternateNames.isNotEmpty) {
        artist.alternateNames[0] = artist.alternateNames
            .toString()
            .replaceAll('[', '')
            .replaceAll(']', '');
      } // Запись всех alternateNames в первую стрингу list'a
      emit(ArtistState.loaded(
        artist: artist,
        listArtistSongs: listArtistSongs,
        socials: socials,
      ));
    } on Exception {
      emit(const ArtistState.error());
    }
  }
}

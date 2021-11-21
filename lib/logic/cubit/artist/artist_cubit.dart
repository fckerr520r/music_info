import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/artist.dart';
import 'package:music_lyrics/service/models/genius_models/artist_social_data.dart';
import 'package:music_lyrics/service/models/genius_models/artist_track.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';

part 'artist_state.dart';

class ArtistCubit extends Cubit<ArtistState> {
  ArtistCubit({required this.repository}) : super(ArtistInitial());

  final GeniusRepository repository;
  late final List<SongA> listArtistSongs;
  late final ArtistClass artist;
  late final List<SocialData> socials;

  Future<void> getAtristInfo(int artistId) async {
    try {
      emit(ArtistLoading());
      await Future.wait([
        repository.getArtist(artistId).then((result) => artist = result),
        repository
            .getArtistTrack(artistId)
            .then((result) => listArtistSongs = result),
        repository
            .getArtistSocials(artistId)
            .then((result) => socials = result),
      ]);
      emit(ArtistComplete(
        artist: artist,
        listArtistSongs: listArtistSongs,
        socials: socials,
      ));
    } on Exception {
      emit(ArtistError());
    }
  }
}

part of 'artist_cubit.dart';

@immutable
abstract class ArtistState {}

class ArtistInitial extends ArtistState {}

class ArtistLoading extends ArtistState {}

class ArtistComplete extends ArtistState {
  final List<SongA> listArtistSongs;
  final ArtistClass artist;
  final List<SocialData> socials;

  ArtistComplete({
    required this.listArtistSongs,
    required this.artist,
    required this.socials,
  });
}

class ArtistError extends ArtistState {}

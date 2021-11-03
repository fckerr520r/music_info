part of 'song_cubit.dart';

@immutable
abstract class SongState {}

class SongInitial extends SongState {}

class SongLoading extends SongState {}

class SongComplete extends SongState {
  final Song song;
  final String videoUrl;
  final String featuredArtists;
  final String writeredArtists;
  final String producerArtists;

  SongComplete(
    this.song,
    this.videoUrl,
    this.featuredArtists,
    this.producerArtists,
    this.writeredArtists,
  );
}

class SongError extends SongState {}

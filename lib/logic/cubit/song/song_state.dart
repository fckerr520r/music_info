part of 'song_cubit.dart';

@freezed
class SongState with _$SongState {
  const factory SongState.loading() = _SongLoadingState; 
  const factory SongState.loaded({
    required Song song,
    required String videoUrl,
    required String featuredArtists,
    required String writeredArtists, 
    required String producerArtists,
  }) = SongLoadedState; 
  const factory SongState.error() = _SongErrorState;  
}
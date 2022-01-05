part of 'artist_cubit.dart';

@freezed
class ArtistState with _$ArtistState {
  const factory ArtistState.initial() = _ArtistInitialState;
  const factory ArtistState.loading() = _ArtistLoadingState;
  const factory ArtistState.loaded({
    required List<SongA> listArtistSongs,
    required ArtistFullInfo artist,
    required List<SocialData> socials,
  }) = _ArtistLoadedState;
  const factory ArtistState.error() = _ArtistErrorState;
}

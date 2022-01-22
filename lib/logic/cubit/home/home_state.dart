part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeLoadingState;
  const factory HomeState.loaded({
    List<ArtistFullInfo>? listTopArtists,
    BriefGeniusCountrySongsModel? listRandomTopSongs,
    BriefGeniusCountrySongsModel? listTopCounrtySong,
  }) = HomeLoadedState;

  const factory HomeState.error() = _HomeErrorState;
}
part of 'home_cubit.dart';

// @freezed
// class HomeState with _$HomeState {
//   const factory HomeState.initial() = _HomeInitialState;
//   const factory HomeState.loading() = _HomeLoadingState;
//   const factory HomeState.loaded(
//     List<ArtistFullInfo>? listTopArtists,
//     BriefGeniusCountrySongsModel? listRandomTopSongs,
//     BriefGeniusCountrySongsModel? listTopCounrtySong,
//   ) = HomeLoadedState;

//   const factory HomeState.error() = _HomeErrorState;
// }

@immutable
abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeCompleted extends HomeState {
  final List<ArtistFullInfo>? listTopArtists;
  final BriefGeniusCountrySongsModel? listRandomTopSongs;
  final BriefGeniusCountrySongsModel? listTopCounrtySong;

  const HomeCompleted({
    this.listTopArtists,
    this.listRandomTopSongs,
    this.listTopCounrtySong,
  });

  HomeCompleted copyWith({
    List<ArtistFullInfo>? listTopArtists,
    BriefGeniusCountrySongsModel? listRandomTopSongs,
    BriefGeniusCountrySongsModel? listTopCounrtySong,
  }) {
    return HomeCompleted(
      listTopArtists: listTopArtists ?? this.listTopArtists,
      listRandomTopSongs: listRandomTopSongs ?? this.listRandomTopSongs,
      listTopCounrtySong: listTopCounrtySong ?? this.listTopCounrtySong,
    );
  }
}

class HomeError extends HomeState {}

part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeCompleted extends HomeState {
  final List<ArtistClass>? listTopArtists;
  final List<BriefGeniusSongModel>? listRandomTopSongs;
  final List<BriefGeniusSongModel>? listTopCounrtySong;

  HomeCompleted({
    this.listTopArtists,
    this.listRandomTopSongs,
    this.listTopCounrtySong,
  });

  HomeCompleted copyWith({
    List<ArtistClass>? listTopArtists,
    List<BriefGeniusSongModel>? listRandomTopSongs,
    List<BriefGeniusSongModel>? listTopCounrtySong,
  }) {
    return HomeCompleted(
      listTopArtists: listTopArtists ?? this.listTopArtists,
      listRandomTopSongs: listRandomTopSongs ?? this.listRandomTopSongs,
      listTopCounrtySong: listTopCounrtySong ?? this.listTopCounrtySong,
    );
  }
}

class HomeError extends HomeState {}

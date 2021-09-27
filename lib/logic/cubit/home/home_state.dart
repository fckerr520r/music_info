part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeCompleted extends HomeState {
  final List<ArtistClass> listTopArtists;
  final List<Song> listTopSongs;
  final List<Song> listTopCounrtySong;

  HomeCompleted(
    this.listTopArtists,
    this.listTopSongs,
    this.listTopCounrtySong,
  );
}

class HomeError extends HomeState {}

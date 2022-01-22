import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_lyrics/service/models/genius_models/song_model/song_model.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';

part 'song_state.dart';
part 'song_cubit.freezed.dart';

class SongCubit extends Cubit<SongState> {
  SongCubit({required this.repository}) : super(const SongState.loading());

  final GeniusRepository repository;

  Future<void> getSongInfo(int songId) async {
    emit(const SongState.loading());
    final Song song;
    final String featuredArtists;
    final String writeredArtists;
    final String producerArtists;
    final String videoUrl;
    try {
      song = await repository.getSong(idSong: songId);

      if (song.media.isNotEmpty) {
        var _videoUrl = '';
        for (var i = 0; i < song.media.length; i++) {
          if (song.media[i].provider == 'youtube') {
            _videoUrl = song.media[i].url;
            if (_videoUrl.contains('https') == false) {
              _videoUrl = _videoUrl.replaceFirst(RegExp('.{4}'), 'https');
            }
          }
        }
        videoUrl = _videoUrl;
      } else {
        videoUrl = '';
      }

      if (song.featuredArtists!.isNotEmpty) {
        final _featureArtists = <String>[];
        for (var x = 0; x < song.featuredArtists!.length; x++) {
          _featureArtists.add(song.featuredArtists![x].name);
        }
        featuredArtists = _featureArtists.join(', ');
      } else {
        featuredArtists = '';
      }

      if (song.writerArtists!.isNotEmpty) {
        final _writerArtists = <String>[];
        for (var x = 0; x < song.writerArtists!.length; x++) {
          _writerArtists.add(song.writerArtists![x].name);
        }
        writeredArtists = _writerArtists.join(', ');
      } else {
        writeredArtists = '';
      }

      if (song.producerArtists!.isNotEmpty) {
        final _prodArtists = <String>[];
        for (var x = 0; x < song.producerArtists!.length; x++) {
          _prodArtists.add(song.producerArtists![x].name);
        }
        producerArtists = _prodArtists.join(', ');
      } else {
        producerArtists = '';
      }

      emit(
        SongState.loaded(
          song: song,
          videoUrl: videoUrl,
          featuredArtists: featuredArtists,
          writeredArtists: writeredArtists,
          producerArtists: producerArtists,
        ),
      );
    } on Exception {
      emit(const SongState.error());
    }
  }
}

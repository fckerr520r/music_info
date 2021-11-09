import 'dart:io';
import 'package:dio/dio.dart';
import 'package:music_lyrics/constants/tokens.dart';
import 'package:music_lyrics/service/models/musix_match_models/lyric_model.dart';
import 'package:music_lyrics/service/models/musix_match_models/search_model.dart';

class MusixmatchRepository {
  MusixmatchRepository({required Dio dio}) : _dio = dio;

  final client = HttpClient();
  final Dio _dio;

  final String accessToken = Tokens.musixMatchToken;

  static String searchTrackUrl =
      'http://api.musixmatch.com/ws/1.1/track.search';
  static String searchTrackLyricUrl =
      'https://api.musixmatch.com/ws/1.1/track.lyrics.get';

  Future<String> getTrackLyrics(String songName, String songArtist) async {
    try {
      final paramsTrack = {
        'q_track': songName,
        'q_artist': songArtist,
        'page_size': 1,
        'page': 1,
        's_track_rating': 'desc',
        'apikey': accessToken,
      };
      final response =
          await _dio.get(searchTrackUrl, queryParameters: paramsTrack);
      final _searchModel = searchModelFromJson(response.data);

      final tracks = _searchModel.message.body?.trackList ?? [];
      final paramsTrackLyric = {
        'track_id': tracks.isNotEmpty ? tracks[0].track?.trackId : '',
        'apikey': accessToken,
      };
      final responseLyric = await _dio.get(searchTrackLyricUrl,
          queryParameters: paramsTrackLyric);
      final lyricModel = lyricModelFromJson(responseLyric.data);
      return lyricModel.message.body?.lyrics?.lyricsBody ?? '';
    } catch (e) {
      return '';
    }
  }
}

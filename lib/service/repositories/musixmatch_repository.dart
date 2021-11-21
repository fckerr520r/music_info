import 'package:dio/dio.dart';
import 'package:music_lyrics/constants/tokens.dart';
import 'package:music_lyrics/service/models/musix_match_models/chart_tracks.dart';
import 'package:music_lyrics/service/models/musix_match_models/lyric_model.dart';
import 'package:music_lyrics/service/models/musix_match_models/search_model.dart';

class MusixmatchRepository {
  MusixmatchRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  final String accessToken = Tokens.musixMatchToken;

  static String searchTrackUrl =
      'http://api.musixmatch.com/ws/1.1/track.search';
  static String searchTrackLyricUrl =
      'https://api.musixmatch.com/ws/1.1/track.lyrics.get';
  static String chartTracksUrl =
      'https://api.musixmatch.com/ws/1.1/chart.tracks.get';

  Future<String> receiveTrackLyrics(String songName, String songArtist) async {
    try {
      final _paramsTrack = {
        'q_track': songName,
        'q_artist': songArtist,
        'page_size': 1,
        'page': 1,
        's_track_rating': 'desc',
        'apikey': accessToken,
      };
      final _response =
          await _dio.get(searchTrackUrl, queryParameters: _paramsTrack);
      final _searchModel = searchModelFromJson(_response.data);

      final tracks = _searchModel.message.body?.trackList ?? [];
      if (tracks.isNotEmpty) {
        final paramsTrackLyric = {
          'track_id': tracks[0].track?.trackId,
          'apikey': accessToken,
        };
        final responseLyric = await _dio.get(searchTrackLyricUrl,
            queryParameters: paramsTrackLyric);
        final lyricModel = lyricModelFromJson(
            responseLyric.data); // TODO null вместо листа песен
        return lyricModel.message.body?.lyrics?.lyricsBody ?? '';
      }
      return '';
    } on Exception {
      return '';
    }
  }

  Future<List<String>> receiveChartTracksMX(String country) async {
    try {
      final _paramsTrack = {
        'chart_name': 'top',
        'page': 1,
        'page_size': 10,
        'country': country,
        'f_has_lyrics': 1,
        'apikey': accessToken,
      };
      final _response =
          await _dio.get(chartTracksUrl, queryParameters: _paramsTrack);
      if (_response.statusCode == 200) {
        final _searchModel = chartTracksFromJson(_response.data);
        final trackList = _searchModel.message.body?.trackList ?? [];
        if (trackList == []) {
          return [];
        }
        final queryTracksList = <String>[];
        for (var i = 0; i < trackList.length; i++) {
          queryTracksList.add(
              '${trackList[i].track.trackName} ${trackList[i].track.artistName}');
        }
        return queryTracksList;
      }
      return [];
    } on Exception catch (e) {
      Exception(e);
      return [];
    }
  }
}

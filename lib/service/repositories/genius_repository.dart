import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/constants/tokens.dart';
import 'package:music_lyrics/presentation/Icons/social_icons.dart';
import 'package:music_lyrics/service/models/artist.dart';
import 'package:music_lyrics/service/models/artist_social_data.dart';
import 'package:music_lyrics/service/models/artist_track.dart' hide Response;
import 'package:music_lyrics/service/models/search.dart' hide Response;
import 'package:music_lyrics/service/models/song.dart';
import 'package:music_lyrics/service/models/track_album.dart' hide Response;
import 'package:music_lyrics/service/repositories/musixmatch_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GeniusRepository {
  final client = HttpClient();
  final Dio _dio;
  GeniusRepository({required Dio dio}) : _dio = dio;
  final String clientAccessToken = Tokens.geniusAccessToken;

  final _storage = SharedPreferences.getInstance();

  static String mainUrl = 'https://api.genius.com';

  final songsUrl = '$mainUrl/songs';
  final artistUrl = '$mainUrl/artists';
  final searchUrl = '$mainUrl/search';
  final albumUrl = '$mainUrl/albums';

  final artistCacheKey = 'artist_cache';
  final topCountrySongsCacheKey = 'top_country_songs_cache';
  final topSongsCacheKey = 'top_songs_cache';

  Future<ArtistClass> getArtist(int idArtist) async {
    final params = {
      'access_token': clientAccessToken,
    };
    try {
      final thisArtistUrl = '$artistUrl/$idArtist';
      final response =
          await _dio.get(thisArtistUrl, queryParameters: params);
      if (response.statusCode == 200) {
        final result = Artists.fromJson(response.data);
        final singleArtist = result.response.artist;
        return singleArtist;
      } else {
        throw Exception('smth was wrong');
      }
    } on DioError catch (e) {
      print(e);
      throw Exception('smth was wrong');
    }
  }

  Future<List<SocialData>> getArtistSocials(int artistId) async {
    final artist = await getArtist(artistId);
    final socials = <SocialData>[
      SocialData(
          icon: SocialIcons.facebook,
          login: artist.facebookName,
          url: 'https://www.facebook.com/${artist.facebookName}'),
      SocialData(
          icon: SocialIcons.instagram,
          login: artist.instagramName,
          url: 'https://www.instagram.com/${artist.instagramName}/'),
      SocialData(
          icon: SocialIcons.twitter,
          login: artist.twitterName,
          url: 'https://twitter.com/${artist.twitterName}'),
    ];
    return socials;
  }

  Future<List<ArtistClass>> getListArtist() async {
    final artIds = <int>[
      1705319,
      1267272,
      1153161,
      816522,
      566548,
      154390,
      2358,
      1675137,
      1717172,
      1050560
    ];
    var artistList = <ArtistClass>[];
    String jsonArtists;
    final storage = await _storage;

    if (storage.containsKey(artistCacheKey)) {
      jsonArtists = storage.getString(artistCacheKey)!;
      artistList = artistListFromJson(jsonArtists);
    } else {
      for (var i = 0; i < artIds.length; i++) {
        final artist = await getArtist(artIds[i]);
        artistList.add(artist);
      }
      jsonArtists = artistListToJson(artistList);
      await storage.setString(artistCacheKey, jsonArtists);
    }
    return artistList;
  }

  Future<Song> getSong(int idSong) async {
    final params = {
      'access_token': clientAccessToken,
    };
    try {
      final thisSongUrl = '$songsUrl/$idSong';
      final response = await _dio.get(thisSongUrl, queryParameters: params);
      if (response.statusCode == 200) {
        final result = TrackChart.fromJson(response.data);
        final singleSong = result.response.song;
        singleSong.lyric = await MusixmatchRepository(dio: GetIt.I.get<Dio>())
            .getTrackLyrics(singleSong.title, singleSong.primaryArtist!.name);
        return singleSong;
      } else {
        throw Exception('smth was wrong');
      }
    } on DioError catch (e) {
      print(e);
      throw Exception('smth was wrong');
    }
  }

  Future<List<Song>> getListSong() async {
    final songIds = <int>[
      5983087,
      6820606,
      3395627,
      6083409,
      3446542,
      6942022,
      6732114,
      6594284,
      7065552,
      6830644,
    ];
    var topSongList = <Song>[];
    String jsonTopSongs;
    final storage = await _storage;

    if (storage.containsKey(topSongsCacheKey)) {
      jsonTopSongs = storage.getString(topSongsCacheKey)!;
      topSongList = songsListFromJson(jsonTopSongs);
    } else {
      for (var i = 0; i < songIds.length; i++) {
        final song = await getSong(songIds[i]);
        topSongList.add(song);
      }
      jsonTopSongs = songsListToJson(topSongList);
      await storage.setString(topSongsCacheKey, jsonTopSongs);
    }
    return topSongList;
  }

  Future<List<Hit>> getSearch(String query) async {
    final params = {
      'access_token': clientAccessToken,
      'q': query,
    };
    try {
      final response = await _dio.get(searchUrl, queryParameters: params);
      if (response.statusCode == 200) {
        final result = GetSearch.fromJson(response.data);
        final searchList = result.response.hits.toList();
        return searchList;
      } else {
        throw Exception('smth was wrong');
      }
    } on DioError catch (e) {
      print(e);
      throw Exception('smth was wrong');
    }
  }

  Future<List<SongA>> getArtistTrack(int idArtist) async {
    final params = {
      'access_token': clientAccessToken,
      'sort': 'popularity',
      'per_page': 15,
    };
    try {
      final thisArtistSongsUrl = '$artistUrl/$idArtist/songs';
      final response =
          await _dio.get(thisArtistSongsUrl, queryParameters: params);
      if (response.statusCode == 200) {
        final result = ArtistTracks.fromJson(response.data);
        final listOfArtistSongs = result.response.songs;
        return listOfArtistSongs;
      } else {
        throw Exception('smth was wrong');
      }
    } on DioError catch (e) {
      print(e);
      throw Exception('smth was wrong');
    }
  }

  Future<Album> getTrackAlbum(int idAlbum) async {
    final params = {
      'access_token': clientAccessToken,
    };
    try {
      final thisArtistSongsUrl = '$albumUrl/$idAlbum';
      final response =
          await _dio.get(thisArtistSongsUrl, queryParameters: params);
      if (response.statusCode == 200) {
        final result = TrackAlbum.fromJson(response.data);
        final album = result.response.album;
        return album;
      } else {
        throw Exception('smth was wrong');
      }
    } on DioError catch (e) {
      print(e);
      throw Exception('smth was wrong');
    }
  }

  Future<List<Song>> getTopCounrtySong() async {
    final songIds = [
      5999733,
      5983087,
      6083409,
      5669687,
      7091815,
      7027615,
      3446542,
      6919586,
      7078004,
      6860574,
      213161,
    ];
    var topCounrtySongList = <Song>[];
    String jsonTopCountrySongs;
    final storage = await _storage;

    if (storage.containsKey(topCountrySongsCacheKey)) {
      jsonTopCountrySongs = storage.getString(topCountrySongsCacheKey)!;
      topCounrtySongList = songsListFromJson(jsonTopCountrySongs);
    } else {
      for (var i = 0; i < songIds.length; i++) {
        topCounrtySongList.add(await getSong(songIds[i]));
      }
      jsonTopCountrySongs = songsListToJson(topCounrtySongList);
      await storage.setString(topCountrySongsCacheKey, jsonTopCountrySongs);
    }

    return topCounrtySongList;
  }
}

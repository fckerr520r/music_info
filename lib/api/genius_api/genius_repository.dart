import 'dart:io';
import 'package:dio/dio.dart';
import 'package:music_lyrics/api/genius_api/jsons/artist.dart' hide Response;
import 'package:music_lyrics/api/genius_api/jsons/artist_track.dart'
    hide Response;
import 'package:music_lyrics/api/genius_api/jsons/search.dart' hide Response;
import 'package:music_lyrics/api/genius_api/jsons/song.dart' hide Response;
import 'package:music_lyrics/api/genius_api/jsons/track_album.dart'
    hide Response;
import 'package:music_lyrics/api/tokens.dart';
import 'package:music_lyrics/favorite/favorite_data.dart';

class GeniusRepository {
  final client = HttpClient();
  final Dio _dio = Dio();
  
  final String clientAccessToken = Tokens.geniusAccessToken;

  static String mainUrl = "https://api.genius.com";

  var songsUrl = "$mainUrl/songs";
  var artistUrl = "$mainUrl/artists";
  var searchUrl = "$mainUrl/search";
  var albumUrl = "$mainUrl/albums";

  Future<ArtistClass> getArtist(int idArtist) async {
    var params = {
      'access_token': clientAccessToken,
    };
    try {
      String thisArtistUrl = '$artistUrl/$idArtist';
      Response response =
          await _dio.get(thisArtistUrl, queryParameters: params);
      if (response.statusCode == 200) {
        Artists result = Artists.fromJson(response.data);
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

  Future<List<ArtistClass>> getListArtist() async {
    List<int> artIds = [
      1705319,
      1267272,
      1153161,
      816522,
      566548,
      154390,
      // 143013,
      // 100956,
      2358,
      1675137,
      1717172,
      1050560
    ];
    List<ArtistClass> artistList = [];
    for (var i = 0; i < artIds.length; i++) {
      final ArtistClass artist = await getArtist(artIds[i]);
      artistList.add(artist);
    }
    return artistList;
  }

  Future<Song> getSong(int idSong) async {
    var params = {
      'access_token': clientAccessToken,
    };
    try {
      String thisSongUrl = '$songsUrl/$idSong';
      Response response = await _dio.get(thisSongUrl, queryParameters: params);
      if (response.statusCode == 200) {
        TrackChart result = TrackChart.fromJson(response.data);
        final singleSong = result.response.song;
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
    List<int> songIds = [
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
      // 6687662,
      // 7096046,
      // 6815419,
      // 6702232
    ];
    List<Song> topSongList = [];
    for (var i = 0; i < songIds.length; i++) {
      final Song song = await getSong(songIds[i]);
      topSongList.add(song);
    }
    return topSongList;
  }

  Future<List<Hit>> getSearch(String query) async {
    var params = {
      'access_token': clientAccessToken,
      'q': query,
    };
    try {
      Response response = await _dio.get(searchUrl, queryParameters: params);
      if (response.statusCode == 200) {
        GetSearch result = GetSearch.fromJson(response.data);
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
    var params = {
      'access_token': clientAccessToken,
      'sort': 'popularity',
      'per_page': 10,
    };
    try {
      String thisArtistSongsUrl = '$artistUrl/$idArtist/songs';
      Response response =
          await _dio.get(thisArtistSongsUrl, queryParameters: params);
      if (response.statusCode == 200) {
        ArtistTracks result = ArtistTracks.fromJson(response.data);
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
    var params = {
      'access_token': clientAccessToken,
    };
    try {
      String thisArtistSongsUrl = '$albumUrl/$idAlbum';
      Response response =
          await _dio.get(thisArtistSongsUrl, queryParameters: params);
      if (response.statusCode == 200) {
        TrackAlbum result = TrackAlbum.fromJson(response.data);
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
    List<int> songIds = [
      5999733,
      5983087,
      6083409,
      5669687,
      7091815,
      7027615,
      3446542,
      6919586,
      // 7078004,
      // 6860574,
      // 213161,
      // 6837693,
      // 6711330,
      // 6998824,
    ];
    List<Song> topCounrtySongList = [];
    for (var i = 0; i < songIds.length; i++) {
      final Song song = await getSong(songIds[i]);
      topCounrtySongList.add(song);
    }
    return topCounrtySongList;
  }

  Future<List<Song>> getFavoriteSongs() async {
    List<int> songIds = await FavoriteSongClass().loadFavoriteSongsId();
    List<Song> favoriteSongList = [];
    if (songIds.isNotEmpty) {
      for (var i = 0; i < songIds.length; i++) {
        final Song song = await getSong(songIds[i]);
        favoriteSongList.add(song);
      }
    }
    return favoriteSongList;
  }
}

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/constants/tokens.dart';
import 'package:music_lyrics/presentation/Icons/social_icons.dart';
import 'package:music_lyrics/service/models/genius_models/artist.dart';
import 'package:music_lyrics/service/models/genius_models/artist_social_data.dart';
import 'package:music_lyrics/service/models/genius_models/artist_track.dart'
    hide Response;
import 'package:music_lyrics/service/models/genius_models/search.dart'
    hide Response;
import 'package:music_lyrics/service/models/genius_models/song.dart';
import 'package:music_lyrics/service/models/universal_models/brief_song.dart';
import 'package:music_lyrics/service/repositories/cache_repository.dart';
import 'package:music_lyrics/service/repositories/musixmatch_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GeniusRepository {
  GeniusRepository({
    required Dio dio,
    required SharedPreferences storage,
  })  : _dio = dio,
        _storage = storage;

  final SharedPreferences _storage;
  final Dio _dio;
  final musixmatchRepository = MusixmatchRepository(dio: GetIt.I.get<Dio>());
  final cacheRepository =
      CacheRepository(storage: GetIt.I.get<SharedPreferences>());
  final String clientAccessToken = Tokens.geniusAccessToken;

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
      final response = await _dio.get(thisArtistUrl, queryParameters: params);
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
    final storage = _storage;

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
        final lyric = await MusixmatchRepository(dio: GetIt.I.get<Dio>())
            .receiveTrackLyrics(
                singleSong.title, singleSong.primaryArtist.name);
        if (lyric.isNotEmpty) {
          final index = lyric.indexOf('*');
          singleSong.lyric = lyric.substring(0, index);
        }
        return singleSong;
      } else {
        throw Exception('smth was wrong');
      }
    } on DioError catch (e) {
      print(e);
      throw Exception('smth was wrong');
    }
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

  Future<List<BriefGeniusSongModel>> receiveChartTracksList(
      {required String countryCode, required bool needUpdate}) async {
    var listChartSongs = <BriefGeniusSongModel>[];
    if (needUpdate == false) {
      // проверка на необходимость апдэйта
      listChartSongs = cacheRepository.checkListSongInCache(countryCode);
      if (listChartSongs.isNotEmpty) {
        return listChartSongs; // проверка кэша
      }
    }

    final listMX = await musixmatchRepository
        .receiveChartTracksMX(countryCode); // получаем список топ треков из mx
    for (var i = 0; i < listMX.length; i++) {
      final oneItem = await receiveFirstItemFromSearchGenius(listMX[i]);
      if (oneItem.id == 0) {
        continue; // скип, если песня не найдена в genius
      }
      listChartSongs.add(
        // добавляем 0 элемент в список итоговой модели
        BriefGeniusSongModel(
          id: oneItem.id,
          title: oneItem.title,
          headerImageUrl: oneItem.headerImageUrl,
          primaryArtist: oneItem.primaryArtist,
        ),
      );
    }

    cacheRepository.saveListSongInCache(
        countryCode: countryCode,
        listChartSongs: listChartSongs); // запись в кэш
    return listChartSongs;
  }

  Future<Result> receiveFirstItemFromSearchGenius(String query) async {
    final params = {
      'access_token': clientAccessToken,
      'q': query,
    };
    try {
      final response = await _dio.get(searchUrl, queryParameters: params);
      if (response.statusCode == 200) {
        final result = GetSearch.fromJson(response.data);
        if (result.response.hits.isNotEmpty) {
          return result.response.hits[0].result;
        }
        return Result(id: 0);
      } else {
        throw Exception('smth was wrong');
      }
    } on DioError catch (e) {
      print(e);
      throw Exception('smth was wrong');
    }
  }
}

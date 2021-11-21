import 'package:music_lyrics/service/models/universal_models/brief_song.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheRepository {
  CacheRepository({required this.storage});

  final SharedPreferences storage;

  final artistCacheKey = 'artist_cache';
  final topCountrySongsCacheKey = 'top_country_songs_cache';

  List<BriefGeniusSongModel> checkListSongInCache(String countryCode) {
    final cacheKey = '${topCountrySongsCacheKey}_$countryCode';
    if (storage.containsKey(cacheKey)) {
      final jsonString = storage.getString(cacheKey)!;
      return briefSongModelListFromJson(jsonString);
    } else {
      return [];
    }
  }

  void removeKey(String countryCode) {
    final cacheKey = '${topCountrySongsCacheKey}_$countryCode';
    storage.remove(cacheKey);
  }

  void saveListSongInCache({
    required List<BriefGeniusSongModel> listChartSongs,
    required String countryCode,
  }) {
    final cacheKey = '${topCountrySongsCacheKey}_$countryCode';
    storage.setString(cacheKey, briefSongModelListToJson(listChartSongs));
  }
}

import 'package:music_lyrics/service/models/universal_models/brief_song.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheRepository {
  CacheRepository({required this.storage});

  final SharedPreferences storage;

  final topCountrySongsCacheKey = 'top_country_songs_cache';

  BriefGeniusCountrySongsModel? checkListSongInCache(String cacheName) {
    final cacheKey = cacheName;
    if (storage.containsKey(cacheKey)) {
      final jsonString = storage.getString(cacheKey)!;
      return briefGeniusCountrySongsModelFromJson(jsonString);
    } else {
      return null;
    }
  }

  void removeKey(String cacheName) {
    final cacheKey = cacheName;
    storage.remove(cacheKey);
  }

  void saveListSongInCache({
    required BriefGeniusCountrySongsModel listChartSongs,
    required String cacheName,
  }) {
    final cacheKey = cacheName;
    storage.setString(
        cacheKey, briefGeniusCountrySongsModelToJson(listChartSongs));
  }
}

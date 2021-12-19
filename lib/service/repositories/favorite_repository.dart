import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/service/models/genius_models/song.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteSongRepository {
  FavoriteSongRepository({
    required SharedPreferences storage,
  }) : _storage = storage;

  final SharedPreferences _storage;
  static const idsKey = 'ids';
  List<int> favoriteSongId = [];

  Future<List<int>> loadFavoriteSongsId() async {
    final storage = _storage;
    var favoriteSongId = <int>[];
    var favoriteSongIdString = <String>[];

    if (storage.containsKey(idsKey)) {
      favoriteSongIdString = storage.getStringList(idsKey)!.toList();
      favoriteSongId = favoriteSongIdString.map(int.parse).toList();
    }

    return favoriteSongId;
  }

  Future<bool> addFavoriteSongs(int id) async {
    final storage = _storage;
    var favoriteSongIdString = <String>[];

    if (storage.containsKey(idsKey)) {
      favoriteSongIdString = storage.getStringList(idsKey)!.toList();
    }
    try {
      favoriteSongIdString.add(id.toString());
      await storage.setStringList(idsKey, favoriteSongIdString);
    } on Exception {
      return false;
    }
    return true;
  }

  Future deleteFavoriteSongs(int id) async {
    final storage = _storage;
    List<String>? favoriteSongIdString = [];

    favoriteSongIdString = storage.getStringList(idsKey)!.toList()
      ..remove(id.toString());
    await storage.setStringList(idsKey, favoriteSongIdString);
  }

  Future<bool> checkFavoriteSongs(int id) async {
    final storage = _storage;
    var check = false;
    var favoriteSongIdString = <String>[];
    if (storage.containsKey(idsKey)) {
      favoriteSongIdString = storage.getStringList(idsKey)!.toList();
      check = favoriteSongIdString.contains(id.toString());
    }
    return check;
  }

  Future<List<Song>> receiveFavoriteSongs() async {
    final songIds = await loadFavoriteSongsId();
    final favoriteSongList = <Song>[];
    if (songIds.isNotEmpty) {
      for (var i = 0; i < songIds.length; i++) {
        final song = await GeniusRepository(
          dio: GetIt.I.get<Dio>(),
          storage: GetIt.I.get<SharedPreferences>(),
        ).getSong(songIds[i]);
        favoriteSongList.add(song);
      }
    }
    return favoriteSongList;
  }
}

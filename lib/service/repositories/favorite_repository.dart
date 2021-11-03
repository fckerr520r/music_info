import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:music_lyrics/service/models/song.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteSongClass {
  final _storage = SharedPreferences.getInstance();
  static const idsKey = 'ids';
  List<int> favoriteSongId = [];

  Future<List<int>> loadFavoriteSongsId() async {
    final storage = await _storage;

    List<int> favoriteSongId = [];
    try {
      final favoriteSongIdString = storage.getStringList(idsKey)!.toList();
      favoriteSongId = favoriteSongIdString.map(int.parse).toList();
    } catch (e) {}

    return favoriteSongId;
  }

  Future<bool> addFavoriteSongs(int id) async {
    final storage = await _storage;
    List<String> favoriteSongIdString = [];
    try {
      favoriteSongIdString = storage.getStringList(idsKey)!.toList();
    } catch (e) {}
    
    try {
      favoriteSongIdString.add(id.toString());
      await storage.setStringList(idsKey, favoriteSongIdString);
    } catch (e) {
      return false;
    }

    return true;
  }

  Future deleteFavoriteSongs(int id) async {
    final storage = await _storage;
    List<String>? favoriteSongIdString = [];

    favoriteSongIdString = storage.getStringList(idsKey)!.toList();
    favoriteSongIdString.remove(id.toString());
    await storage.setStringList(idsKey, favoriteSongIdString);
  }

  Future<bool> checkFavoriteSongs(int id) async {
    final storage = await _storage;
    bool check = false;
    List<String> favoriteSongIdString = [];
    try {
      favoriteSongIdString = storage.getStringList(idsKey)!.toList();
      check = favoriteSongIdString.contains(id.toString());
    } catch (e) {}
    return check;
  }

  Future<List<Song>> receiveFavoriteSongs() async {
    final List<int> songIds = await loadFavoriteSongsId();
    List<Song> favoriteSongList = [];
    if (songIds.isNotEmpty) {
      for (var i = 0; i < songIds.length; i++) {
        final Song song =
            await GeniusRepository(dio: GetIt.I.get<Dio>()).getSong(songIds[i]);
        favoriteSongList.add(song);
      }
    }
    return favoriteSongList;
  }
}

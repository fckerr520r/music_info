import 'package:shared_preferences/shared_preferences.dart';

class FavoriteSongClass {
  final _storage = SharedPreferences.getInstance();

  Future<List<int>> loadFavoriteSongsId() async {
    final storage = await _storage;
    List<int> favoriteSongId = [];
    try {
      final favoriteSongIdString = storage.getStringList('ids')!.toList();
      favoriteSongId = favoriteSongIdString.map(int.parse).toList();
    } catch (e) {}

    return favoriteSongId;
  }

  Future addFavoriteSongs(int id) async {
    final storage = await _storage;
    List<String> favoriteSongIdString = [];
    try {
      favoriteSongIdString = storage.getStringList('ids')!.toList();
    } catch (e) {}
    favoriteSongIdString.add(id.toString());
    await storage.setStringList('ids', favoriteSongIdString);
  }

  Future deleteFavoriteSongs(int id) async {
    final storage = await _storage;
    List<String> favoriteSongIdString = [];
    try {
      favoriteSongIdString = storage.getStringList('ids')!.toList();
      favoriteSongIdString.remove(id.toString());
      await storage.setStringList('ids', favoriteSongIdString);
    } catch (e) {}
  }

  Future<bool> checkFavoriteSongs(int id) async {
    final storage = await _storage;
    bool check = false;
    List<String> favoriteSongIdString = [];
    try {
      favoriteSongIdString = storage.getStringList('ids')!.toList();
      check = favoriteSongIdString.contains(id.toString());
    } catch (e) {}
    return check;
  }
}

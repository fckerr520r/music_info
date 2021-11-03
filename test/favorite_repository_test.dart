import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:music_lyrics/service/repositories/favorite_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesMock extends Mock implements SharedPreferences {}
void main() {
  
  final sPMock = SharedPreferencesMock();

  test('try to add song in favorite list', () async {
    int id = 5;
    List<String> favoriteSongIdString = ['64', '6897', '64648'];
    bool boolka = false; 

    when(() => sPMock.getStringList(any())).thenAnswer((_) => favoriteSongIdString);
    when(() => sPMock.setStringList(any(), favoriteSongIdString));

    boolka = await FavoriteSongClass().addFavoriteSongs(id);

    expect(boolka, true);
  });
}
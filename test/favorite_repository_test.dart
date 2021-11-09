import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:music_lyrics/service/repositories/favorite_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesMock extends Mock implements SharedPreferences {}

void main() {
  final sPMock = SharedPreferencesMock();

  test('try to add song in favorite list', () async {
    const id = 5;
    final favoriteSongIdString = <String>['64', '6897', '64648'];
    var boolka = false;

    when(() => sPMock.getStringList(any()))
        .thenAnswer((_) => favoriteSongIdString);
    when(() => sPMock.setStringList(any(), favoriteSongIdString));

    boolka = await FavoriteSongRepository( )
        .addFavoriteSongs(id);

    expect(boolka, true);
  });
}

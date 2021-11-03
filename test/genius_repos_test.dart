import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:music_lyrics/service/models/artist.dart';
import 'package:music_lyrics/service/models/song.dart' as ModelSong;
import 'package:music_lyrics/service/repositories/genius_repository.dart';

class DioMock extends Mock implements Dio {}

void main() {
  final dioMock = DioMock();
  final geniusRepository = GeniusRepository(dio: dioMock);

  test(
    'artist',
    () async {
      final meta = Meta(status: 200);
      final artist = ArtistClass(alternateNames: [], followersCount: 50, id: 5);
      final response = ResponseArtist(artist: artist);
      final artistAnswer = Artists(meta: meta, response: response);

      when(() => dioMock.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          statusCode:  200,
          data: artistAnswer.toJson(),
        ),
      );
      
      ArtistClass artistCheck = await geniusRepository.getArtist(6);
      expect(artistCheck.followersCount, 50);
    },
  );

  test(
    'song',
    () async {
      final meta = ModelSong.Meta(status: 200);
      final song = ModelSong.Song(id: 6, songArtImageUrl: 'this url');
      final response = ModelSong.ResponseSong(song: song);
      final songAnswer = ModelSong.TrackChart(meta: meta, response: response);

      when(() => dioMock.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 400,
          data: songAnswer.toJson(),
        ),
      );
      // var songCheck = await geniusRepository.getSong(6);
      // expect(songCheck.songArtImageUrl, 'this url');
      expect( () => geniusRepository.getSong(6), throwsException);
    },
  );

  test(
    'song list',
    () async {
      final meta = ModelSong.Meta(status: 200);
      final song = ModelSong.Song(id: 6, songArtImageUrl: 'this url');
      final response = ModelSong.ResponseSong(song: song);
      final songAnswer = ModelSong.TrackChart(meta: meta, response: response);

      when(() => dioMock.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          )).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 200,
          data: songAnswer.toJson(),
        ),
      );
      var songCheck = await geniusRepository.getSong(6);
      expect(songCheck.songArtImageUrl, 'this url');
    },
  );
}

// import 'package:dio/dio.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:music_lyrics/service/models/genius_models/artist.dart';
// import 'package:music_lyrics/service/models/genius_models/main_artist_info.dart';
// import 'package:music_lyrics/service/models/genius_models/song.dart'
//     as model_song;
// import 'package:music_lyrics/service/repositories/genius_repository.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class DioMock extends Mock implements Dio {}

// class SPMock extends Mock implements SharedPreferences {}

// void main() {
//   final dioMock = DioMock();
//   final spMock = SPMock();
//   final geniusRepository = GeniusRepository(dio: dioMock, storage: spMock);

//   test(
//     'artist',
//     () async {
//       final meta = Meta(status: 200);
//       final artist = ArtistClass(alternateNames: [], id: 5);
//       final response = ResponseArtist(artist: artist);
//       final artistAnswer = Artists(meta: meta, response: response);

//       when(() => dioMock.get(
//             any(),
//             queryParameters: any(named: 'queryParameters'),
//           )).thenAnswer(
//         (_) async => Response(
//           requestOptions: RequestOptions(path: ''),
//           statusCode: 200,
//           data: artistAnswer.toJson(),
//         ),
//       );

//       final artistCheck = await geniusRepository.getArtist(6);
//       expect(artistCheck.id, 5);
//     },
//   );

//   test(
//     'song',
//     () async {
//       final meta = model_song.Meta(status: 200);
//       final song = model_song.Song(
//           id: 6,
//           songArtImageUrl: 'this url',
//           primaryArtist: const ArtistMainInfo());
//       final response = model_song.ResponseSong(song: song);
//       final songAnswer = model_song.TrackChart(meta: meta, response: response);

//       when(() => dioMock.get(
//             any(),
//             queryParameters: any(named: 'queryParameters'),
//           )).thenAnswer(
//         (_) async => Response(
//           requestOptions: RequestOptions(path: ''),
//           statusCode: 400,
//           data: songAnswer.toJson(),
//         ),
//       );
//       final songCheck = await geniusRepository.getSong(6);
//       expect(songCheck.songArtImageUrl, 'this url');
//       // expect(() => geniusRepository.getSong(6), throwsException);
//     },
//   );

//   test(
//     'song list',
//     () async {
//       final meta = model_song.Meta(status: 200);
//       final song = model_song.Song(
//           id: 6,
//           songArtImageUrl: 'this url',
//           primaryArtist: const ArtistMainInfo());
//       final response = model_song.ResponseSong(song: song);
//       final songAnswer = model_song.TrackChart(meta: meta, response: response);

//       when(() => dioMock.get(
//             any(),
//             queryParameters: any(named: 'queryParameters'),
//           )).thenAnswer(
//         (_) async => Response(
//           requestOptions: RequestOptions(path: ''),
//           statusCode: 200,
//           data: songAnswer.toJson(),
//         ),
//       );
//       final songCheck = await geniusRepository.getSong(6);
//       expect(songCheck.songArtImageUrl, 'this url');
//     },
//   );
// }

// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart' as mocktail;
// import 'package:music_lyrics/logic/cubit/favorite_change/favorite_change_cubit.dart';
// import 'package:music_lyrics/presentation/widgets/song_info/app_bar.dart';

// class FavoriteChangeStateFake extends Fake implements FavoriteChangeState {}

// class FavoriteChangeCubitMock extends MockCubit<FavoriteChangeState>
//     implements FavoriteChangeCubit {}

// void main() {
//   late FavoriteChangeCubitMock favoriteChangeCubitMock;
//   setUpAll(() {
//     mocktail.registerFallbackValue(FavoriteChangeStateFake());
//   });

//   setUp(() {
//     favoriteChangeCubitMock = FavoriteChangeCubitMock();
//     mocktail
//         .when(() => favoriteChangeCubitMock.state)
//         .thenReturn(FavoriteChangeComplete(isFavorite: false));
//   });

//   testWidgets(
//     'try to add song',
//     (tester) async {
//       final addIcon = find.byIcon(Icons.bookmark_add);

//       await tester.pumpWidget(
//         BlocProvider<FavoriteChangeCubit>(
//           create: (context) => favoriteChangeCubitMock,
//           child: const MaterialApp(
//             home: SongAppBar(
//               songId: 6,
//             ),
//           ),
//         ),
//       );
//       // await tester.tap(addIcon);
//       // await tester.pump();

//       expect(addIcon, findsOneWidget);
//     },
//   );
// }

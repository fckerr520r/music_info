// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:music_lyrics/logic/cubit/search/search_cubit.dart';
// import 'package:music_lyrics/service/models/genius_models/search.dart';
// import 'package:music_lyrics/service/repositories/genius_repository.dart';

// class GeniusRepositoryMock extends Mock implements GeniusRepository {}

// void main() {
//   final geniusRepositoryMock = GeniusRepositoryMock();
//   final result = Result(id: 5);
//   final listAnswer = <Hit>[
//     Hit(index: '', result: result, type: ''),
//   ];

//   SearchCubit buildCubit() {
//     return SearchCubit(repository: geniusRepositoryMock);
//   }

//   blocTest<SearchCubit, SearchState>(
//     'Search Cubit',
//     setUp: () {
//       when(() => geniusRepositoryMock.getSearch(any()))
//           .thenAnswer((_) async => listAnswer);
//     },
//     build: buildCubit,
//     act: (cubit) => cubit.fetch('jbl'),
//     expect: () => [
//       isA<SearchLoading>(),
//       predicate<SearchCompleted>((state) => state.searchList == listAnswer),
//     ],
//   );
// }


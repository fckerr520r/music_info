import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/search.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.repository}) : super(SearchInitial());
  final GeniusRepository repository;
  late List<Hit> que;

  Future fetch(String query) async {
    try {
      emit(SearchLoading());
      que = await repository.getSearch(query);
      if (que.isEmpty) {
        emit(SearchNoFind());
        return;
      }
      emit(SearchCompleted(que));
    } on Exception {
      emit(SearchError());
    }
  }
}
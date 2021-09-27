import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/search.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  late List<Hit> que;

  Future fetch(query) async {
    try {
      emit(SearchLoading());
      que = await GeniusRepository().getSearch(query);
      if (que.isEmpty) {
        emit(SearchNoFind());
        return;
      }
      emit(SearchCompleted(que));
    } catch (e) {
      emit(SearchError());
    }
  }
}

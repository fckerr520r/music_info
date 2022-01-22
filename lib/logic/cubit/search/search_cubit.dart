import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/models/genius_models/search_model/search_genius_model.dart';
import 'package:music_lyrics/service/repositories/genius_repository.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.repository}) : super(const SearchState.initial());
  final GeniusRepository repository;
  late List<Hit> que;

  Future fetchListOfSongs(String query) async {
    try {
      emit(const SearchState.loading());
      que = await repository.getSearch(query);
      if (que.isEmpty) {
        emit(const SearchState.noFound());
        return;
      }
      emit(SearchState.loaded(que));
    } on Exception {
      emit(const SearchState.error());
    }
  }
}

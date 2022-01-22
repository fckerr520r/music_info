part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchInitialState;
  const factory SearchState.loading() = _SearchLoadingState;
  const factory SearchState.loaded(List<Hit> searchList) = _SearchLoadedState;
  const factory SearchState.noFound() = _SearchNoFoundState;
  const factory SearchState.error() = _SearchErrorState;
}
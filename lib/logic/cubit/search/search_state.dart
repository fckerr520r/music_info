part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchCompleted extends SearchState {
  final List<Hit> searchList;

  SearchCompleted(this.searchList);
}

class SearchLoading extends SearchState {}

class SearchNoFind extends SearchState {}

class SearchError extends SearchState {}

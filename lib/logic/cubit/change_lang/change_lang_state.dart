part of 'change_lang_cubit.dart';

@immutable
abstract class ChangeLangState {}

class ChangeLangInitial extends ChangeLangState {}

class ChangeLangLoaded extends ChangeLangState {
  final List<Map<String, String>> locales;

  ChangeLangLoaded({required this.locales});
}


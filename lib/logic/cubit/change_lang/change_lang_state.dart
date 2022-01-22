part of 'change_lang_cubit.dart';

@freezed
class ChangeLangState with _$ChangeLangState{
  const factory ChangeLangState.initial() = _ChangeLangInitialState;

  const factory ChangeLangState.loaded({required List<Map<String, String>> locales}) = _ChangeLangLoadedState;
}


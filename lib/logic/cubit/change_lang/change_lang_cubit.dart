import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/repositories/change_lang_repository.dart';

part 'change_lang_state.dart';
part 'change_lang_cubit.freezed.dart';

class ChangeLangCubit extends Cubit<ChangeLangState> {
  ChangeLangCubit({required this.langRepository}) : super(const ChangeLangState.initial()) {
    loadLocales();
  }
  
  final ChangeLangClass langRepository; 

  void updateLang(String locale) {
    langRepository.updateLocal(locale);
  }

  void loadLocales() {
    emit(ChangeLangState.loaded(locales: langRepository.locales));
  }
}

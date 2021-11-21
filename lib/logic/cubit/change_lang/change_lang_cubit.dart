import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_lyrics/service/repositories/change_lang_repository.dart';

part 'change_lang_state.dart';

class ChangeLangCubit extends Cubit<ChangeLangState> {
  ChangeLangCubit({required this.langRepository}) : super(ChangeLangInitial()) {
    loadLocales();
  }
  
  final ChangeLangClass langRepository; 

  void updateLang(String locale) {
    langRepository.updateLocal(locale);
  }

  void loadLocales() {
    emit(ChangeLangLoaded(locales: langRepository.locales));
  }
}

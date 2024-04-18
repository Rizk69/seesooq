
import 'package:bloc/bloc.dart';
import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(
    ThemeInitial(
      'الوضع النهاري',
      'اللغة العربية',
    ),
  );

  void toggleLanguage(String language) {
    if (state.selectedLanguage == language) {
      return;
    }
    emit(LanguageSelected(state.selectedTheme, language));
  }

  void toggleDark(String theme) {
    if (state.selectedTheme == theme) {
      return;
    }
    emit(ThemeSelected(theme, state.selectedLanguage));
  }
}

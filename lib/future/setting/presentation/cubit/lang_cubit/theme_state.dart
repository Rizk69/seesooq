
import 'package:meta/meta.dart';



@immutable
abstract class ThemeState {
  final String selectedTheme;
  final String selectedLanguage;

  const ThemeState(this.selectedTheme, this.selectedLanguage);
}

class ThemeInitial extends ThemeState {
  ThemeInitial(String selectedTheme, String selectedLanguage)
      : super(selectedTheme, selectedLanguage);
}

class LanguageSelected extends ThemeState {
  final String selectedLanguage;

  LanguageSelected(String selectedTheme, this.selectedLanguage)
      : super(selectedTheme, selectedLanguage);
}

class ThemeSelected extends ThemeState {
  final String selectedTheme;

  ThemeSelected(this.selectedTheme, String selectedLanguage)
      : super(selectedTheme, selectedLanguage);
}


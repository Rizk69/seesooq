import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/future/splash/domain/usecases/change_theme.dart';
import 'package:opensooq/future/splash/domain/usecases/get_theme_usecase.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../core/usecasses/usecasess_shared.dart';
import '../../../../core/utils/enums.dart';
import '../../domain/usecases/change_lang.dart';
import '../../domain/usecases/get_saved_lang.dart';

part 'locale_state.dart';

@Injectable()
class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit({
    required this.getSavedLangUseCase,
    required this.changeLangUseCase,
    required this.changeThemeUseCase,
    required this.getThemeUseCase,
  }) : super(const LocaleState(locale: Locale(AppStrings.englishCode)));

  static LocaleCubit get(context) => BlocProvider.of(context);

  final GetSavedLangUseCase getSavedLangUseCase;
  final ChangeLangUseCase changeLangUseCase;
  final ChangeThemeUseCase changeThemeUseCase;
  final GetThemeUseCase getThemeUseCase;

  var currentLangCode = AppStrings.englishCode;

  Future init() async {
    Future.wait([getSavedLang(), getThemeApp()]);
  }

  Future<void> getSavedLang() async {
    final response = await getSavedLangUseCase.call(NoParams());
    response.fold(
      (_) {
        if (Platform.localeName.toLowerCase().contains('ar')) {
          toArabic();
        } else {
          toEnglish();
        }
        debugPrint('errorGettingLanguage$_');
      },
      (value) {
        debugPrint('$value');
        currentLangCode = value!;
        emit(state.copyWith(locale: Locale(currentLangCode)));
      },
    );
  }

  Future<void> getThemeApp() async {
    final response = await getThemeUseCase.call(NoParams());
    response.fold(
      (error) {
        debugPrint('errorGettingLanguage$error');
      },
      (value) {
        if (value == 'dark') {
          emit(state.copyWith(theme: 'dark'));
        } else {
          emit(state.copyWith(theme: 'light'));
        }
      },
    );
  }

  Future<void> changeLang(String langCode) async {
    final response = await changeLangUseCase.call(langCode);
    response.fold(
      (_) {
        debugPrint('error');
      },
      (value) {
        print('value: $currentLangCode');
        currentLangCode = langCode;
        emit(state.copyWith(locale: Locale(currentLangCode)));
      },
    );
  }

  Future<void> changeTheme(AllTypes userType) async {
    switch (userType) {
      case AllTypes.dark:
        emit(state.copyWith(theme: 'dark'));
        changeThemeUseCase.call('dark');
        break;
      case AllTypes.light:
        emit(state.copyWith(theme: 'light'));
        changeThemeUseCase.call('light');
        break;
    }
  }

  void toEnglish() => changeLang(AppStrings.englishCode);

  void toArabic() => changeLang(AppStrings.arabicCode);
}

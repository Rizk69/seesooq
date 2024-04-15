import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'colors/color_manager.dart';
import 'text/kind/dark_text.dart';
import 'text/kind/light_text.dart';
import 'text/text_theme.dart';

abstract class ITheme {
  ITextTheme get textTheme;

  IColors get colors;
}

abstract class ThemeManager {
  static ThemeData createTheme(ITheme theme) => ThemeData(
      fontFamily: theme.textTheme.fontFamily,
      textTheme: theme.textTheme.data,
      useMaterial3: true,
      cardColor: theme.colors.colorScheme?.onSecondary,
      iconTheme: IconThemeData(
        color: theme.colors.colorScheme!.primary,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: theme.colors.colorScheme!.primary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: const IconThemeData(),
        selectedLabelStyle: theme.textTheme.data.titleLarge!.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        elevation: 0.0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: theme.textTheme.data.titleLarge!.copyWith(color: Colors.grey, fontWeight: FontWeight.w100),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(theme.colors.colorScheme!.primary),
        elevation: MaterialStateProperty.all(0.0),
        side: MaterialStateProperty.all(BorderSide(color: theme.colors.colorScheme!.primary, width: 1, style: BorderStyle.solid)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      )),
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: theme.colors.colorScheme!.primary,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red, width: 0.7),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          errorMaxLines: 1,
          fillColor: AppColors.inputFillColor,
          hintStyle: theme.textTheme.data.titleLarge?.copyWith(color: Colors.grey),
          suffixIconColor: Colors.grey,
          iconColor: Colors.grey,
          filled: true),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: theme.colors.colorScheme?.onError, elevation: 0.0, backgroundColor: theme.colors.colorScheme?.primary),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: theme.colors.colorScheme!.primary,
          ),
          backgroundColor: theme.colors.appBarColor,
          elevation: 0.0),
      tabBarTheme: TabBarTheme(
        indicatorColor: AppColors.tabBarIndicator,
        labelColor: Colors.black,
        labelStyle: theme.textTheme.data.headlineMedium!.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: Colors.grey,
        unselectedLabelStyle: theme.textTheme.data.headlineMedium!.copyWith(color: Colors.grey, fontWeight: FontWeight.normal),
      ),
      scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
      colorScheme: theme.colors.colorScheme,
      cardTheme: CardTheme(
          color: theme.colors.colorScheme!.primary.withOpacity(0.1),
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(
        theme.colors.colorScheme!.primary,
      )));
}

class AppThemeDark extends ITheme {
  @override
  late final ITextTheme textTheme;

  AppThemeDark() {
    textTheme = TextThemeDark(AppColors.primary);
  }

  @override
  IColors get colors => DarkColors();
}

class AppThemeLight extends ITheme {
  @override
  late final ITextTheme textTheme;

  AppThemeLight() {
    textTheme = TextThemeLight(AppColors.primary);
  }

  @override
  IColors get colors => LightColors();
}

// class AppThemeMarketPlace extends ITheme {
//   @override
//   late final ITextTheme textTheme;
//
//   AppThemeMarketPlace() {
//     textTheme = TextThemeLight(AppColors.primaryMarketPlace);
//   }
//
//   @override
//   IColors get colors => LightColorMarketPlace();
// }
//
// class AppThemeServiceProvider extends ITheme {
//   @override
//   late final ITextTheme textTheme;
//
//   AppThemeServiceProvider() {
//     textTheme = TextThemeLight(AppColors.primaryServiceProvider);
//   }
//
//   @override
//   IColors get colors => LightColorServiceProvider();
// }
//
// class AppThemeBusinessDirectory extends ITheme {
//   @override
//   late final ITextTheme textTheme;
//
//   AppThemeBusinessDirectory() {
//     textTheme = TextThemeLight(AppColors.primaryBusinessDirectory);
//   }
//
//   @override
//   IColors get colors => LightColorBusinessDirectory();
// }

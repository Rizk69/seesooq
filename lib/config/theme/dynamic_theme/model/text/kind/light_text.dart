import 'package:flutter/material.dart';

import '../text_theme.dart';

class TextThemeLight implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6;

  @override
  TextStyle? subtitle1;

  @override
  TextStyle? subtitle2;
  @override
  final Color? primaryColor;

  TextThemeLight(this.primaryColor) {
    data = const TextTheme(
        headlineLarge: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            decorationThickness: 6),
        headlineMedium: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            decorationThickness: 5),
        displaySmall: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decorationThickness: 4),
        headlineSmall: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w300,
            decorationThickness: 2),
        titleLarge: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w200,
            decorationThickness: 1),
        bodyLarge: TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            height: 2),
        labelLarge: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500));
    fontFamily = 'Roboto';
  }

  @override
  String? fontFamily;
}

class TextThemeServiceProvider implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6;

  @override
  TextStyle? subtitle1;

  @override
  TextStyle? subtitle2;
  @override
  final Color? primaryColor;

  TextThemeServiceProvider(this.primaryColor) {
    data = const TextTheme(
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      titleMedium: TextStyle(
        fontSize: 16.0,
      ),
    ).apply(bodyColor: primaryColor);

    fontFamily = 'Roboto';
  }

  @override
  String? fontFamily;
}

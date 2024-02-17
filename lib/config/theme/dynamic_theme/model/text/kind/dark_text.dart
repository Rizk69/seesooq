import 'package:flutter/material.dart';

import '../text_theme.dart';

class TextThemeDark implements ITextTheme {
  @override
  late TextTheme data;
  @override
  final Color? primaryColor;

  TextThemeDark(this.primaryColor) {
    data =  const TextTheme(
        displayLarge: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            decorationThickness: 6),
        displayMedium: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            decorationThickness: 5),
        displaySmall: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            decorationThickness: 4),
        headlineMedium: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            decorationThickness: 3),
        headlineSmall: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w300,
            decorationThickness: 2),
        titleLarge: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w200,
            decorationThickness: 1),
        bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.normal,
            decorationThickness: 1),
        labelLarge: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500)
    );
    fontFamily ='Roboto';
  }
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
  String? fontFamily;
}

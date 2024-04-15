import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

part './kind/dark_color.dart';
part './kind/light_color.dart';

@immutable
class _AppColors {
  final Color white = const Color(0xffffffff);
  final Color black = const Color(0xff000000);

  final Color green = const Color(0xff7bed8d);
  final Color primary = const Color(0xff4C0497);
  final Color mediumGrey = const Color(0xffa6bcd0);
  final Color mediumGreyBold = const Color(0xff748a9d);
  final Color lighterGrey = const Color(0xfff0f4f8);
  final Color lightGrey = const Color(0xffdbe2ed);
  final Color darkerGrey = const Color(0xff404e5a);
  final Color darkGrey = const Color(0xff4e5d6a);
  final Color backgroundColorDarkMode = const Color(0xff1E1E20);
}

abstract class IColors {
  // ignore: library_private_types_in_public_api
  _AppColors get colors;
  Color? scaffoldBackgroundColor;
  Color? appBarColor;
  Color? tabBarColor;
  Color? tabbarSelectedColor;
  Color? tabbarNormalColor;
  Color? circleBackGround;
  List? onBoarding;
  Brightness? brightness;

  ColorScheme? colorScheme;

  ButtonThemeData? buttonThemeData;
}

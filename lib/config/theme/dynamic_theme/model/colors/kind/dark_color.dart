part of '../color_manager.dart';

class DarkColors implements IColors {
  @override
  final _AppColors colors = _AppColors();

  @override
  ColorScheme? colorScheme;

  @override
  Brightness? brightness;

  @override
  Color? appBarColor;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? tabBarColor;

  @override
  Color? tabbarNormalColor;

  @override
  Color? tabbarSelectedColor;

  DarkColors() {
    appBarColor = colors.backgroundColorDarkMode;
    scaffoldBackgroundColor = colors.backgroundColorDarkMode;
    tabBarColor = colors.green;
    tabbarNormalColor = colors.lighterGrey;
    tabbarSelectedColor = colors.green;
    colorScheme = const ColorScheme.dark().copyWith(
        primary: colors.primary,
        primaryContainer: colors.white,
        onPrimary: Colors.white,
        onSecondary: colors.white,
        error: Colors.red,
        background: Colors.white);
    brightness = Brightness.dark;
  }

  double? elevation;

  @override
  Color? circleBackGround;

  @override
  List? onBoarding;

  @override
  ButtonThemeData? buttonThemeData;
}

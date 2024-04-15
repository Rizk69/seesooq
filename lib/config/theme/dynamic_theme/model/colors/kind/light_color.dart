part of '../color_manager.dart';

class LightColors implements IColors {
  @override
  final _AppColors colors = _AppColors();

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

  @override
  Color? circleBackGround;

  @override
  List? onBoarding;
  LightColors() {
    appBarColor = colors.white;
    scaffoldBackgroundColor = colors.white;
    tabBarColor = colors.green;
    tabbarNormalColor = colors.darkerGrey;
    tabbarSelectedColor = colors.green;
    circleBackGround = colors.green;

    colorScheme = const ColorScheme.light().copyWith(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        onPrimary: Colors.white,
        onSecondary: colors.white,
        onSurface: colors.mediumGreyBold);
    brightness = Brightness.light;
    buttonThemeData = ButtonThemeData(
      buttonColor: Colors.white,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  Brightness? brightness;

  @override
  ColorScheme? colorScheme;

  @override
  ButtonThemeData? buttonThemeData;
}

// class LightColorServiceProvider implements IColors {
//   @override
//   final _AppColors colors = _AppColors();
//
//   @override
//   ColorScheme? colorScheme;
//   @override
//   Color? appBarColor;
//
//   @override
//   Color? scaffoldBackgroundColor;
//
//   @override
//   Color? tabBarColor;
//
//   @override
//   Color? tabbarNormalColor;
//
//   @override
//   Color? tabbarSelectedColor;
//
//   LightColorServiceProvider() {
//     appBarColor = colors.white;
//     scaffoldBackgroundColor = colors.white;
//     tabBarColor = colors.green;
//     tabbarNormalColor = colors.darkerGrey;
//     tabbarSelectedColor = colors.green;
//     colorScheme = const ColorScheme.light().copyWith(
//         primary: AppColors.primaryServiceProvider,
//         secondary: AppColors.secondaryServiceProvider,
//         onPrimary: Colors.white,
//         onSecondary: colors.white,
//         onSurface: colors.mediumGreyBold);
//
//     brightness = Brightness.dark;
//   }
//
//   @override
//   Brightness? brightness;
//
//
//
//   @override
//   Color? circleBackGround;
//
//   @override
//   List? onBoarding;
// }
//
// class LightColorMarketPlace implements IColors {
//   @override
//   final _AppColors colors = _AppColors();
//
//   @override
//   ColorScheme? colorScheme;
//   @override
//   Color? appBarColor;
//
//   @override
//   Color? scaffoldBackgroundColor;
//
//   @override
//   Color? tabBarColor;
//
//   @override
//   Color? tabbarNormalColor;
//
//   @override
//   Color? tabbarSelectedColor;
//
//   LightColorMarketPlace() {
//     appBarColor = colors.white;
//     scaffoldBackgroundColor = colors.white;
//     tabBarColor = colors.green;
//     tabbarNormalColor = colors.darkerGrey;
//     tabbarSelectedColor = colors.green;
//     colorScheme = const ColorScheme.light().copyWith(
//         primary: AppColors.primaryMarketPlace,
//         secondary: AppColors.secondaryMarketPlace,
//         onPrimary: Colors.white,
//         onSecondary: colors.white,
//         onSurface: colors.mediumGreyBold);
//
//     brightness = Brightness.dark;
//   }
//
//   @override
//   Brightness? brightness;
//
//
//
//   @override
//   Color? circleBackGround;
//
//   @override
//   List? onBoarding;
// }
//
// class LightColorBusinessDirectory implements IColors {
//   @override
//   final _AppColors colors = _AppColors();
//
//   @override
//   ColorScheme? colorScheme;
//   @override
//   Color? appBarColor;
//
//   @override
//   Color? scaffoldBackgroundColor;
//
//   @override
//   Color? tabBarColor;
//
//   @override
//   Color? tabbarNormalColor;
//
//   @override
//   Color? tabbarSelectedColor;
//
//   LightColorBusinessDirectory() {
//     appBarColor = colors.white;
//     scaffoldBackgroundColor = colors.white;
//     tabBarColor = colors.green;
//     tabbarNormalColor = colors.darkerGrey;
//     tabbarSelectedColor = colors.green;
//     colorScheme = const ColorScheme.light().copyWith(
//         primary: AppColors.primaryBusinessDirectory,
//         secondary: AppColors.secondaryBusinessDirectory,
//         onPrimary: Colors.white,
//         onSecondary: colors.white,
//         onSurface: colors.mediumGreyBold);
//
//     brightness = Brightness.dark;
//   }
//
//   @override
//   Brightness? brightness;
//
//
//
//   @override
//   Color? circleBackGround;
//
//   @override
//   List? onBoarding;
// }

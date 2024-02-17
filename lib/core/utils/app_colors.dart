import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class AppColors {
  static Color primary = HexColor('#4C0497');
  static Color secondary = HexColor('#FF9900');
  static Color primaryMarketPlace = HexColor('#960019');
  static Color secondaryMarketPlace = HexColor('#EBEBEB');
  static Color primaryServiceProvider = HexColor('#C68301');
  static Color secondaryServiceProvider = HexColor('#EBEBEB');
  static Color primaryBusinessDirectory = HexColor('#2D2D2D');
  static Color secondaryBusinessDirectory = HexColor('#EBEBEB');
  static Color hint = Colors.grey;
  static Color circleBackGround = HexColor('#f4f9fd');
  static Color inputFillColor = const Color(0xffF6F6F6);
  static Color neutralGrey = const Color(0xff9098B1);
  static Color starColor = HexColor('#E2DDFD');
  static Color tabBarIndicator = HexColor('#FF9900');
  static Color myShop = HexColor('#FF9900');
  static Color primaryColorText = HexColor('#8D79F8');
  static Color grey = HexColor('#707070');
  static var linerColors = [
    HexColor('#4C0497'),
    HexColor('#4C0497').withOpacity(0.5),
  ];

  static List onBoarding = [
    HexColor('#960019'),
    HexColor('#C68301'),
    HexColor('#575757'),
  ];
}

Map<int, Color> getSwatch(Color color) {
  final hslColor = HSLColor.fromColor(color);
  final lightness = hslColor.lightness;

  /// if [500] is the default color, there are at LEAST five
  /// steps below [500]. (i.e. 400, 300, 200, 100, 50.) A
  /// divisor of 5 would mean [50] is a lightness of 1.0 or
  /// a color of #ffffff. A value of six would be near white
  /// but not quite.
  const lowDivisor = 6;

  /// if [500] is the default color, there are at LEAST four
  /// steps above [500]. A divisor of 4 would mean [900] is
  /// a lightness of 0.0 or color of #000000
  const highDivisor = 5;

  final lowStep = (1.0 - lightness) / lowDivisor;
  final highStep = lightness / highDivisor;

  return {
    50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
    100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
    200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
    300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
    400: (hslColor.withLightness(lightness + lowStep)).toColor(),
    500: (hslColor.withLightness(lightness)).toColor(),
    600: (hslColor.withLightness(lightness - highStep)).toColor(),
    700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
    800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
    900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
  };
}

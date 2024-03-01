import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:opensooq/future/login/presentation/widgets/button_socail_media.dart';

const double breakPointWidth = 600;

extension MediaQueryValues on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;

  double get bottom => MediaQuery.of(this).viewPadding.bottom;
  bool get exceededBreakPoint => width > breakPointWidth;

  double get listItemWidth => exceededBreakPoint ? width * 0.6 : width * 0.85;
  double get listItemImageWidth => width * 0.25;
  double get listItemHeight => 100;

  double get gridItemHeight => exceededBreakPoint ? height * 0.22 : height * 0.24 + 15;
  double get gridItemImageHeight => height * 0.12;
  double get gridItemWidth => exceededBreakPoint ? width / 4 : width / 2.5;
}

//add dote price in price
extension Prices on String {
  String get price {
    if (this == '0') {
      return '0';
    } else {
      return replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
    }
  }
}

extension ShortMonthDateFromUTC on DateTime {
  String shortMonthDateFromUTC() {
    var localDate = DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
    return DateFormat.jm('en_GB').add_yMd().format(localDate);
  }
}

extension ImagePath on String {
  String get toPng => 'assets/images/$this.png';

  String get toLottie => 'assets/images/lottie/$this.json';

  String get toSvg => 'assets/images/svg/$this.svg';
  String get detailsToSvg => 'assets/images/svg/icons_ads/$this.svg';

  String get toJpg => 'assets/images/$this.jpg';

  String get toJpeg => 'assets/images/$this.jpeg';
}

extension LoginStatusType on LoginType {
  String get toText {
    switch (this) {
      case LoginType.google:
        return 'google';
      case LoginType.facebook:
        return 'facebook';
      case LoginType.apple:
        return 'apple';
      default:
        return 'email';
    }
  }
}

// remove ago fron text
extension StringExtension on String {
  String get removeAgo {
    return replaceAll('ago', '');
  }
}

extension AdaptiveGridViewCount on BuildContext {
  T? withFormFactor<T>({
    required T onMobile,
    required T onTablet,
    required T onDesktop,
    bool followDeviceOrientation = true,
  }) {
    final formFactor = this.formFactor(
      followDeviceOrientation: followDeviceOrientation,
    );

    return formFactor.isMobile
        ? onMobile
        : formFactor.isTablet
            ? onTablet
            : onDesktop;
  }

  FormFactor formFactor({bool followDeviceOrientation = true}) {
    final width = followDeviceOrientation ? mediaQuery.size.width : mediaQuery.size.shortestSide;

    return width > ScreenWidthBreakpoints.desktop
        ? FormFactor.desktop
        : width > ScreenWidthBreakpoints.tablet
            ? FormFactor.tablet
            : FormFactor.mobile;
  }
}

enum FormFactor { desktop, tablet, mobile }

extension BuildContextEx on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

class ScreenWidthBreakpoints {
  static const double desktop = 900;
  static const double tablet = 600;
  static const double mobile = 300;
}

extension FormFactorHelpers on FormFactor {
  bool get isDesktop => this == FormFactor.desktop;
  bool get isTablet => this == FormFactor.tablet;
  bool get isMobile => this == FormFactor.mobile;
}

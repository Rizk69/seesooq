import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum StyleText { h1, h2, h3, h4, h5, h6, b1 }

class TranslateText extends StatelessWidget {
  const TranslateText(
      {Key? key,
      this.text = '',
      this.textAlign,
      required this.styleText,
      this.colorText,
      this.fontWeight,
      this.maxLines,
      this.textDecoration,
      this.fontSize})
      : super(key: key);
  final String text;
  final StyleText styleText;
  final Color? colorText;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final double? fontSize;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {

    return Text(
      text.tr(),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: textStyle(styleText, context)!.copyWith(
          color: colorText,
          fontWeight: fontWeight,
          fontSize: fontSize,
          decoration: textDecoration),
      textAlign: textAlign ?? TextAlign.justify,
    );
  }
}

TextStyle? textStyle(StyleText styleText, BuildContext context) {
  switch (styleText) {
    case StyleText.h1:
      return Theme.of(context).textTheme.displayLarge;

    case StyleText.h2:
      return Theme.of(context).textTheme.displayMedium;

    case StyleText.h3:
      return Theme.of(context).textTheme.displaySmall;

    case StyleText.h4:
      return Theme.of(context).textTheme.headlineMedium;

    case StyleText.h5:
      return Theme.of(context).textTheme.headlineSmall;

    case StyleText.h6:
      return Theme.of(context).textTheme.titleLarge;

    case StyleText.b1:
      return Theme.of(context).textTheme.bodyLarge;

    default:
      Theme.of(context).textTheme.titleLarge;
  }
  return Theme.of(context).textTheme.titleLarge;
}

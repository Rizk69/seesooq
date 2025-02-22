import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.color,
    required this.text,
    required this.onPressed,
    this.disableBorder,
    this.backgroundColor,
    this.icon,
  });

  final String text;
  final Color color;
  final VoidCallback onPressed;
  final Border? disableBorder;
  final Color? backgroundColor;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: disableBorder,
          color: backgroundColor,
          gradient: backgroundColor != null
              ? null
              : LinearGradient(colors: [
                  HexColor('#4C0497'),
                  HexColor('#4C0497').withOpacity(0.5),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          TranslateText(
            styleText: StyleText.h4,
            fontSize: 18,
            text: text,
            colorText: color,
          ),
          if (icon != null) const Gap(10),
          icon != null ? icon! : const SizedBox.shrink(),
        ]),
      ),
    );
  }
}

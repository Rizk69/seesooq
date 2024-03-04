import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widget/text_translate_manager.dart';

class HeaderScreens extends StatelessWidget {
  String title;
  Function onPressed;
  HeaderScreens({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 14),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.grey.withOpacity(0.2))),
          onPressed: () {
            onPressed();
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 28,
            color: Color(0Xff4C0497),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TranslateText(
            styleText: StyleText.h4,
            colorText: AppColors.primary,
            fontWeight: FontWeight.bold,
            text: title,
          ),
        ),
      ],
    );
  }
}
class CustomButtom extends StatelessWidget {
  Function onPressed;
  IconData icon;

   CustomButtom({super.key, required this.onPressed,required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 14),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll<Color>(
              Colors.grey.withOpacity(0.2))),
      onPressed: () {
        onPressed();
      },
      icon:  Icon(
        icon,
        size: 28,
        color: const Color(0Xff4C0497),
      ),
    );
  }
}

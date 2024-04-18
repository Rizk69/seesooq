import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../widget/text_translate_manager.dart';

class CustomButtonSheetRemove extends StatelessWidget {
  final String textToRemove;
  final VoidCallback onPressed;
  const CustomButtonSheetRemove({super.key, required this.textToRemove, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtom(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icons.close),
                titleText(textToRemove, HexColor('4C0497'), StyleText.h4)
              ],
            ),
            const Center(child: AnimatedCheck(img: "assets/images/remove.png")),
            const SizedBox(
              height: 25,
            ),
            Center(child: titleText(textToRemove, HexColor('#DC3545'), StyleText.h4)),
            const SizedBox(
              height: 10,
            ),
            Center(child: titleText(textToRemove, HexColor('#707070'), StyleText.h5)),
            Center(child: titleText(textToRemove, HexColor('#707070'), StyleText.h5)),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.red, width: 2)),
                        child: Center(
                          child: titleText('Cancel', Colors.red, StyleText.h4),
                        ),
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: titleText('delete', Colors.white, StyleText.h4),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget titleText(String title, Color color, StyleText styleText) {
    return TranslateText(
      styleText: styleText,
      colorText: color,
      fontWeight: FontWeight.w500,
      text: title,
    );
  }
}

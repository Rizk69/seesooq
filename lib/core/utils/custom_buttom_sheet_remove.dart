import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/future/setting1/edit_profile/presentation/widgets/header_screen.dart';

import '../../future/setting1/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import '../widget/text_translate_manager.dart';

class CustomButtomSheetRemove extends StatelessWidget {
  String textToRemove;
  CustomButtomSheetRemove({super.key, required this.textToRemove});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              titleText('Delete Video', HexColor('4C0497'), StyleText.h4)
            ],
          ),
          const Center(child: AnimatedCheck(img: "assets/images/remove.png")),
          const SizedBox(
            height: 25,
          ),
          Center(
              child:
                  titleText('حذف الفيديو', HexColor('#DC3545'), StyleText.h4)),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: titleText('أنت على وشك حذف الفيديو نهائيًا، هل أنت ',
                  HexColor('#707070'), StyleText.h5)),
          Center(
              child: titleText('متأكد أنك تود حذف الفيديو ؟',
                  HexColor('#707070'), StyleText.h5)),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.red, width: 2)),
                      child: Center(
                        child: titleText('إلغاء', Colors.red, StyleText.h4),
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
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: titleText('حذف', Colors.white, StyleText.h4),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
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

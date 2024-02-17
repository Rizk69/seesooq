import 'package:flutter/material.dart';

import '../../../core/utils/hex_color.dart';
import '../../../core/widget/text_translate_manager.dart';
import '../../setting1/edit_profile/presentation/widgets/anmtionsucssuffly.dart';

class EmptyScreen extends StatelessWidget {
  String img;
  String title;
  String des1;
  String des2;
   EmptyScreen({super.key, required this.title,required this.img,required this.des1,required this.des2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 4.3,
        ),
        Center(child: AnimatedCheck(img:img )),
        const SizedBox(
          height: 34,
        ),
        Center(
            child: titleText(
                title, HexColor('#4C0497'), StyleText.h4)),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: titleText(des1,
                HexColor('#707070'), StyleText.h5)),
        Center(
            child: titleText(des2
                , HexColor('#707070'), StyleText.h5)),
      ],
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

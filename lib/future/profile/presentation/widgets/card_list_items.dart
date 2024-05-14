import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/utils/svg_custom_image.dart';

class CardListItems extends StatelessWidget {
  String title;
  String des;
  String img;
  int index;
  bool indexActive;
  CardListItems({
    super.key,
    required this.title,
    required this.des,
    required this.img,
    required this.index,
    required this.indexActive,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: HexColor('#F9F9F9'),
          radius: 25,
          child: SvgCustomImage(
            image: img,
            width: 25,
            height: 25,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        contactText(
          title: title, // Use the title from the contact
          des: des, // Use the description from the contact
        ),


        Spacer(),

        // Icon(
        //   Icons.arrow_forward_ios,
        //   color: AppColors.grey.withOpacity(0.7),
        // ),
      ],
    );
  }

  Widget contactText({
    required String title,
    required String des,
  }) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18, color:indexActive ? index ==3? Colors.red :Colors.black:Colors.black, fontWeight: FontWeight.w700),
        ),
        Text(
          des,
          style: TextStyle(
              fontSize: 15,
              color:HexColor('707070'),
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}

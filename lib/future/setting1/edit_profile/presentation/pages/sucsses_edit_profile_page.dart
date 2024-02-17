import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../../../../core/utils/custom_button_widget.dart';
import '../../../../../core/utils/hex_color.dart';
import '../../../../../core/widget/text_translate_manager.dart';
import '../widgets/anmtionsucssuffly.dart';

class SucssesEditProfile extends StatelessWidget {
  const SucssesEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          'assets/images/svg/header_auth_page.svg',
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4.3,
        ),
        Center(child: AnimatedCheck(img: "assets/images/Group 448.png")),
        const SizedBox(
          height: 34,
        ),
        Center(
            child: titleText(
                'تم تعديل الحساب بنجاح', HexColor('#4C0497'), StyleText.h4)),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: titleText('قمت بتعديل معلومات الحساب الخاصة بك بنجاح',
                HexColor('#707070'), StyleText.h5)),
        Center(
            child: titleText('...بنجاح، يمكنك متابعة التصفح',
                HexColor('#707070'), StyleText.h5)),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButtonWidget(
                color: Colors.white,
                text: 'متابعة إلى الصفحة الرئيسية',
                onPressed: () {
                  context.go(Routes.home);
                },
              )),
        )
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

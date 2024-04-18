import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/anmtionsucssuffly.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/custom_button_widget.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/text_translate_manager.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key, this.type});
  final String? type;

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
        const Center(child: AnimatedCheck(img: "assets/images/Group 448.png")),
        const SizedBox(
          height: 34,
        ),
        Center(child: titleText('subscribed_successfully', HexColor('#4C0497'), StyleText.h4)),
        const SizedBox(
          height: 10,
        ),
        Center(child: titleText("successfully_subscribed_to_the_exclusive", HexColor('#707070'), StyleText.h5)),
        Center(child: titleText("des_successfully_subscribed", HexColor('#707070'), StyleText.h5)),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButtonWidget(
                color: Colors.white,
                text: 'continue_to_the_homepage',
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

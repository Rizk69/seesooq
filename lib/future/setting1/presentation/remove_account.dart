import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/setting1/widget/radio_remove.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/custom_button_widget.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/widget/text_translate_manager.dart';
import '../edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import '../edit_profile/presentation/widgets/header_screen.dart';

class RemoveAccountPage extends StatelessWidget {
  const RemoveAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
      child: Column(
        children: [
          HeaderScreens(
              title: 'reason_for_deleting',
              onPressed: () {
                context.go(Routes.accountMangePage);
              }),
          const SizedBox(
            height: 37,
          ),
          RadioRemove(),
          Spacer(),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButtonWidget(
                color: Colors.white,
                text: 'delete_my_account'.tr(),
                onPressed: () {
                  context.go(Routes.sucssesRemoveAccountPage);
                },
              ))
        ],
      ),
    );
  }
}

class SucssesRemoveAccountPage extends StatelessWidget {
  const SucssesRemoveAccountPage({super.key});

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
                'تم حذف الحساب بنجاح', HexColor('#4C0497'), StyleText.h4)),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: titleText('قمت بحذف الحساب الخاص بك بنجاح،',
                HexColor('#707070'), StyleText.h5)),
        Center(
            child: titleText(
                '...تشرفنا بزيارتك', HexColor('#707070'), StyleText.h5)),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButtonWidget(
                color: Colors.white,
                text: 'متابعة',
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

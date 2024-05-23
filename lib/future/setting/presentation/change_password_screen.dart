import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/Customs.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../core/utils/custom_failed_app.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/widget/text_translate_manager.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              HeaderScreens(
                  title: 'change_password',
                  onPressed: () {
                    context.pop();
                  }),
              const SizedBox(height: 20),
              titleText('new_change_password'),
              const SizedBox(height: 10),
              CustomTextFormFiledPasswrd(
                title: 'enter_new_change_password'.tr(),
                imgIconSvg: "assets/images/svg/password.svg",
              ),
              const SizedBox(height: 24),
              titleText('confirm_password'),
              const SizedBox(height: 10),
              CustomTextFormFiledPasswrd(
                title: 're-enter_Password'.tr(),
                imgIconSvg: "assets/images/svg/password.svg",
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  context.go(Routes.sucssesChangePasswordPage);
                },
                child: ButtomsCustom(title: 'save_Password'.tr()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget titleText(String title) {
    return Align(
      alignment: Alignment.centerRight,
      child: TranslateText(
        styleText: StyleText.h4,
        colorText: HexColor('#200E32'),
        fontWeight: FontWeight.w700,
        text: title,
      ),
    );
  }
}

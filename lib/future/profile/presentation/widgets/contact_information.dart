import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TranslateText(
          styleText: StyleText.h5,
          text: 'mobile'.tr(),
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        const SizedBox(
          height: 5,
        ),
        CustomTextFormFiled(prefixIcon: true, onChanged: (value) {}),
        const SizedBox(
          height: 5,
        ),
        TranslateText(
          styleText: StyleText.h5,
          text: 'email'.tr(),
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        const SizedBox(
          height: 5,
        ),
        CustomTextFormFiled(prefixIcon: false, onChanged: (value) {}),
      ],
    );
  }
}

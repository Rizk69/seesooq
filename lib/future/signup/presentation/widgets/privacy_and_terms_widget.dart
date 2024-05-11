import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class PrivacyAndTermsWidget extends StatelessWidget {
  const PrivacyAndTermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text.rich(TextSpan(children: [
        TextSpan(
            text: 'textPrivacy1'.tr(),
            style: TextStyle(color: HexColor('#707070B2'))),
        TextSpan(
            text: 'textPrivacy2'.tr(),
            style: TextStyle(color: HexColor('#F05A35'))),
        TextSpan(text: 'textPrivacy3'.tr(), style: TextStyle(color: HexColor('#707070B2'))),
        TextSpan(
            text: 'textPrivacy4'.tr(), style: TextStyle(color: HexColor('#F05A35'))),
      ])),
    );
  }
}

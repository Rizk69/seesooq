import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class PrivacyAndTermsWidget extends StatelessWidget {
  const PrivacyAndTermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text.rich(TextSpan(children: [
        TextSpan(
            text: 'By creating an account, you have read and agree to the ',
            style: TextStyle(color: HexColor('#707070B2'))),
        TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(color: HexColor('#F05A35'))),
        TextSpan(text: ' and ', style: TextStyle(color: HexColor('#707070B2'))),
        TextSpan(
            text: 'Terms of Use', style: TextStyle(color: HexColor('#F05A35'))),
      ])),
    );
  }
}

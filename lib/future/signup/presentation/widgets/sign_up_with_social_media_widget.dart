import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opensooq/core/utils/custom_divider.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart';

class SignUpWithSocialMediaWidget extends StatelessWidget {
  const SignUpWithSocialMediaWidget(
      {super.key,
      required this.text,
      required this.isAndroid,
      required this.isIos});
  final String text;
  final bool isAndroid;
  final bool isIos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(child: CustomDivider()),
            TranslateText(
              styleText: StyleText.h5,
              colorText: Theme.of(context).colorScheme.primary,
              text: text.tr(),
            ),
            const Expanded(child: CustomDivider()),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 15,
            ),
            isAndroid
                ? Flexible(
                    fit: FlexFit.tight,
                    child: InkWell(
                      onTap: () {
                        SignUpCubit.get(context).signUpFromGoogle();
                      },
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: HexColor('#F5F5F5').withOpacity(0.6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SvgPicture.asset('google'.toSvg),
                      ),
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              width: 15,
            ),
            isIos
                ? Flexible(
                    fit: FlexFit.tight,
                    child: InkWell(
                      onTap: () {
                        SignUpCubit.get(context).signUpFromApple();
                      },
                      child: Container(
                        height: 60,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: HexColor('#F5F5F5').withOpacity(0.6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SvgPicture.asset(
                          'apple'.toSvg,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        )
      ],
    );
  }
}

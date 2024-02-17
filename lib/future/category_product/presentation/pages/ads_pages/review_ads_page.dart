import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class ReviewAdsPage extends StatelessWidget {
  const ReviewAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'review_ads'.toPng,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
          const Gap(
            10,
          ),
          TranslateText(
            styleText: StyleText.h3,
            fontWeight: FontWeight.w500,
            text: 'Your ad is under review',
            colorText: HexColor("#4C0497"),
          ),
          const Gap(
            10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TranslateText(
              styleText: StyleText.h4,
              fontWeight: FontWeight.w400,
              maxLines: 3,
              textAlign: TextAlign.center,
              text: 'Administrators will review your ad and publish it if it meets the terms and conditions',
              colorText: HexColor('#707070'),
            ),
          ),
          const Gap(
            60,
          ),
          SizedBox(width: context.width * 0.8, child: CustomButtonWidget(color: Colors.white, text: 'Upgrade Plan', onPressed: () {})),
          const Gap(
            20,
          ),
          SizedBox(
            width: context.width * 0.8,
            child: CustomButtonWidget(
              color: HexColor('4C0497'),
              text: 'Home Page',
              onPressed: () {
                context.goNamed(
                  Routes.home,
                );
              },
              backgroundColor: Colors.white,
              disableBorder: Border.all(color: HexColor('4C0497')),
            ),
          ),
        ],
      ),
    );
  }
}

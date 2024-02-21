import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/banner_ads_shared_widget.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class ShowAdsByAddingScreen extends StatefulWidget {
  const ShowAdsByAddingScreen({super.key});

  @override
  State<ShowAdsByAddingScreen> createState() => _ShowAdsByAddingScreenState();
}

class _ShowAdsByAddingScreenState extends State<ShowAdsByAddingScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BannerAdsSharedWidget(
              images: ['', ''], onPageChanged: (index) {}, height: 250),
          const Gap(
            25,
          ),
          TranslateText(
            styleText: StyleText.h5,
            fontWeight: FontWeight.w500,
            text: 'Brown chair with modern style',
            colorText: HexColor("#200E32"),
          ),
          const Gap(
            10,
          ),
          TranslateText(
            styleText: StyleText.h5,
            maxLines: 4,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w400,
            text:
                'Place the ad description here. Place the ad description here. Place the ad description here. Place the ad description here. Place the ad description here. Place',
            colorText: HexColor("#707070"),
          ),
          const Gap(
            10,
          ),
          TranslateText(
            styleText: StyleText.h3,
            fontWeight: FontWeight.w700,
            text: '25,000 JD',
            colorText: HexColor("#4C0497"),
          ),
          const Gap(
            20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgCustomImage(image: 'location'.toSvg, width: 20, height: 20),
              const Gap(
                5,
              ),
              TranslateText(
                styleText: StyleText.h5,
                fontWeight: FontWeight.w400,
                text: 'Amman - Jordan',
                colorText: HexColor("#200E32"),
              ),
            ],
          ),
          const Gap(
            20,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: context.width * 0.9,
              child: CustomButtonWidget(
                text: 'Publish',
                onPressed: () {
                  context.goNamed(Routes.reviewAdsRoute);
                },
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

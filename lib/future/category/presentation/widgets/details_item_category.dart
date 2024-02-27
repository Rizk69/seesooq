import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class DetailsItemCategory extends StatelessWidget {
  const DetailsItemCategory({super.key, required this.categoryName, required this.numberOfAds, required this.onTap, required this.categoryImage});

  final String categoryName;
  final String numberOfAds;
  final String categoryImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.linerColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TranslateText(
                    styleText: StyleText.h4,
                    text: categoryName,
                    colorText: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgCustomImage(
                        image: 'number_ads'.toSvg,
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                      TranslateText(
                        styleText: StyleText.h6,
                        text: " Number Of Ads :$numberOfAds",
                        colorText: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (categoryImage.split('.').last == 'png') ...[
              Image.network(
                categoryImage,
                alignment: Alignment.center,
                width: 70,
                height: 70,
                fit: BoxFit.contain,
              ),
            ],
            if (categoryImage.split('.').last == 'svg') ...[
              SvgPicture.network(
                categoryImage,
                alignment: Alignment.center,
                fit: BoxFit.contain,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class DetailsItemCategoryAdsWidget extends StatelessWidget {
  const DetailsItemCategoryAdsWidget(
      {super.key,
      required this.categoryName,
      required this.numberOfAds,
      required this.onTap,
      required this.categoryImage});

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
            Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TranslateText(
                  styleText: StyleText.h4,
                  text: 'Mercedes-Benz',
                  colorText: Colors.white,
                ),
              ],
            ),
            Image.asset('mercides'.toPng, width: 60, height: 60),
          ],
        ),
      ),
    );
  }
}

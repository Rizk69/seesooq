import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/alert_gust.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget(
      {super.key,
      required this.categoryName,
      required this.logo,
      required this.categoryId,
      required this.isGust});
  final String categoryName;
  final String logo;
  final String categoryId;
  final bool isGust;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!isGust) {
          context.goNamed(
            Routes.detailsCategoryView,
            queryParameters: <String, String>{
              'categoryName': categoryName,
              'categoryId': categoryId
            },
          );
        }else{
          showLoginOrGuestDialog(context);
        }
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: AppColors.linerColors,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    if (logo.split('.').last == 'png') ...[
                      Image.network(
                        logo,
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ],
                    if (logo.split('.').last == 'svg') ...[
                      SvgPicture.network(
                        logo,
                        alignment: Alignment.center,
                        width: 50,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          Gap(5),
          SizedBox(
            width: 70,
            child: TranslateText(
              styleText: StyleText.h6,
              text: categoryName,
              maxLines: 1,
              textAlign: TextAlign.center,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

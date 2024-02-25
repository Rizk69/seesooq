import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';

class MyOptionDrawerWidget extends StatelessWidget {
  const MyOptionDrawerWidget({Key? key, required this.cubit, required this.scaffoldKey}) : super(key: key);

  final HomeCubit cubit;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: GradientText(
              titles[index].tr(),
              gradient: LinearGradient(
                colors: [
                  AppColors.grey.withOpacity(0.7),
                  HexColor('#000000').withOpacity(0.7),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            onTap: () {
              cubit.updateIndex(index);

              scaffoldKey.currentState!.closeDrawer();

              if (index == 5) {
                context.goNamed(Routes.packages);
              } else if (index == 4) {
                context.goNamed(Routes.wallet);
              } else if (index == 6) {
                context.goNamed(Routes.favorite);
              }else if (index == 0) {
                context.goNamed(Routes.myAds);
              }
            },
            leading: CircleAvatar(
              backgroundColor: HexColor('#F9F9F9'),
              radius: 20,
              child: SvgCustomImage(
                image: titles[index].toSvg,
                width: 20,
                height: 20,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            horizontalTitleGap: 6,
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.grey.withOpacity(0.7),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Gap(10);
        },
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
  });

  final String text;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: TranslateText(
        text: text,
        styleText: StyleText.h5,
        fontSize: 18,
        colorText: AppColors.grey.withOpacity(0.7),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

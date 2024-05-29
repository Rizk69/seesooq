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
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';

class MyOptionDrawerWidget extends StatelessWidget {
  const MyOptionDrawerWidget(
      {super.key, required this.cubit, required this.scaffoldKey});

  final HomeCubit cubit;
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    var isGust = cubit.state.userLocalModel?.user?.name?.isEmpty ?? true;

    return Expanded(
      child: ListView.separated(
        itemCount: isGust ? 1 : titles.length,
        itemBuilder: (context, index) {
          return isGust
              ? ListTile(
                  title: GradientText(
                    'login'.tr(),
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

                    LoginCubit.get(context).deleteLocalUser().then((value) {
                      context.goNamed(Routes.login);
                    });
                  },
                  leading: CircleAvatar(
                    backgroundColor: HexColor('#F9F9F9'),
                    radius: 20,
                    child: SvgCustomImage(
                      image: 'login'.toSvg,
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
                )
              : ListTile(
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

                    if (titles[index].toString() == 'ads_drawer') {
                      context.pushNamed(Routes.myAds);
                    } else if (titles[index].toString() == 'reels_drawer') {
                      context.pushNamed(Routes.reels);
                    } else if (titles[index].toString() == 'wallet_drawer') {
                      context.pushNamed(Routes.wallet);
                    } else if (titles[index].toString() == 'package_drawer') {
                      context.pushNamed(Routes.packages);
                    } else if (titles[index].toString() == 'favorite_drawer') {
                      context.pushNamed(Routes.favorite);
                    } else if (titles[index].toString() == 'setting_drawer') {
                      context.pushNamed(Routes.setting);
                    } else if (titles[index].toString() == 'blogs_drawer') {
                      context.pushNamed(Routes.blogsRoute);
                    } else if (titles[index].toString() == 'logout') {
                      LoginCubit.get(context).deleteLocalUser().then((value) {
                        context.goNamed(Routes.login);
                      });
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

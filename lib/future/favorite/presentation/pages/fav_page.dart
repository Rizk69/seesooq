import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/cache_network_image.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_cubit.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_state.dart';
import 'package:opensooq/future/favorite/presentation/widgets/tab_controller.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('favorite'.tr(),
                style: TextStyle(
                  color: HexColor('#4C0497'),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.goNamed(Routes.home);
            }
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 15, horizontal: 5)),
            visualDensity: VisualDensity.compact,
            backgroundColor: MaterialStateProperty.all<Color>(HexColor("#F5F5F5")),
          ),
          color: HexColor("#4C0497"),
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.compact,
        ),
      ),
      body: BlocProvider(
        create: (context) => FavoriteCubit(),
        child: BlocBuilder<FavoriteCubit, FavoriteState>(builder: (context, state) {
          return Column(children: [
            const SegmentedButtonFavWidget(),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    // context.pushNamed('view_ads_home', extra: item);
                  },
                  child: SizedBox(
                    child: Card(
                      color: Theme.of(context).cardColor,
                      shadowColor: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Stack(
                                children: [
                                  // item.album?.split('.').last == 'svg'
                                  //     ? SvgPicture.network(
                                  //   item.album.toString() ?? '',
                                  //   height: context.height * 0.20,
                                  //   fit: BoxFit.cover,
                                  // )
                                  //     : CacheNetworkImageApp(
                                  CacheNetworkImageApp(
                                    urlImage: 'https://www.opensooq.com/ae-en/static/images/no-image.png',
                                    fit: BoxFit.cover,
                                    height: context.height * 0.20,
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: HexColor('#F05A35'),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                        'fav'.toSvg,
                                        width: 15,
                                        height: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                              child: Column(
                                children: [
                                  const Gap(10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TranslateText(
                                              styleText: StyleText.h5,
                                              maxLines: 1,
                                              textAlign: TextAlign.start,
                                              colorText: HexColor('#200E32'),
                                              fontWeight: FontWeight.w500,
                                              text: 'item.title.toString()',
                                            ),
                                            const Gap(5),
                                            TranslateText(
                                              styleText: StyleText.h6,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              colorText: AppColors.primary,
                                              text: "JD ${20}",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Gap(8),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          SvgCustomImage(
                                              image: 'time_booking'.toSvg, width: 20, height: 20, color: Theme.of(context).colorScheme.primary),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const TranslateText(
                                            styleText: StyleText.h6,
                                            fontWeight: FontWeight.w400,
                                            text: '20/2020',
                                            maxLines: 2,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SvgCustomImage(
                                            image: 'location_boking'.toSvg,
                                            width: 20,
                                            height: 20,
                                            color: Theme.of(context).colorScheme.primary,
                                          ),
                                          const Gap(5),
                                          TranslateText(
                                            styleText: StyleText.h6,
                                            fontWeight: FontWeight.w400,
                                            text: 'amman',
                                            maxLines: 2,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const Gap(10),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: HexColor('#F5F5F5'),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SvgCustomImage(
                                                image: 'call_cat'.toSvg,
                                                width: 20,
                                                height: 20,
                                                color: HexColor('#F05A35'),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              TranslateText(
                                                styleText: StyleText.h5,
                                                text: 'call'.tr(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Gap(10),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: HexColor('#F5F5F5'),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SvgCustomImage(
                                                image: 'message_cat'.toSvg,
                                                width: 20,
                                                height: 20,
                                                color: HexColor('#F05A35'),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              TranslateText(
                                                styleText: StyleText.h5,
                                                text: 'message'.tr(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ]);
        }),
      ),
    );
  }
}

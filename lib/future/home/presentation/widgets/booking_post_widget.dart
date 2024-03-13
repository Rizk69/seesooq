import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/cache_network_image.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';
import 'package:opensooq/future/favorite/data/model/fav_model.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/home_state.dart';

class BookingPostWidget extends StatelessWidget {
  const BookingPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TranslateText(styleText: StyleText.h4, fontSize: 18, fontWeight: FontWeight.w500, text: 'furnitureOffers'),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...?state.advertisementOffer?.data?.asMap().map((key, value) {
                  Data item = state.advertisementOffer!.data![key];
                  return MapEntry(
                      key,
                      InkWell(
                          onTap: () {
                            context.pushNamed('view_ads_home', extra: item.id.toString());
                          },
                          child: SizedBox(
                            width: context.width * 0.7,
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
                                          item.album?.split('.').last == 'svg'
                                              ? SvgPicture.network(
                                                  item.album.toString() ?? '',
                                                  height: context.height * 0.20,
                                                  fit: BoxFit.cover,
                                                )
                                              : CacheNetworkImageApp(
                                                  urlImage: item.album.toString() ?? '',
                                                  fit: BoxFit.cover,
                                                  height: context.height * 0.20,
                                                ),
                                          Positioned(
                                            right: 10,
                                            top: 10,
                                            child: IconButton(
                                              onPressed: () {
                                                if (item.checkIfFavourite ?? false) {
                                                  FavoriteCubit.get(context).removeFav(
                                                    idFav: item.id.toString(),
                                                    isOutSide: true,
                                                    index: key,
                                                  );
                                                } else {
                                                  FavoriteCubit.get(context).addFav(
                                                      idFav: item.id.toString(),
                                                      index: key,
                                                      favData: FavData(
                                                          adId: item.id,
                                                          title: item.title,
                                                          price: item.price,
                                                          createdAt: item.createdAt,
                                                          city: item.city,
                                                          mainImage: item.album));
                                                }
                                              },
                                              style: ButtonStyle(
                                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(0)),
                                                backgroundColor: MaterialStateProperty.all<Color>(Colors.red.withOpacity(0.5)),
                                              ),
                                              icon: Icon(
                                                (item.checkIfFavourite as bool) ? Icons.favorite : Icons.favorite_border,
                                                color: (item.checkIfFavourite as bool) ? Colors.red : Colors.redAccent.withOpacity(0.5),
                                                size: 25,
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
                                                      text: item.title.toString(),
                                                    ),
                                                    const Gap(5),
                                                    TranslateText(
                                                      styleText: StyleText.h6,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                      colorText: AppColors.primary,
                                                      text: "${item.price.toString().price} JD",
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
                                                      image: 'time_booking'.toSvg,
                                                      width: 20,
                                                      height: 20,
                                                      color: Theme.of(context).colorScheme.primary),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  TranslateText(
                                                    styleText: StyleText.h6,
                                                    fontWeight: FontWeight.w400,
                                                    text: item.createdAt.toString().removeAgo,
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
                                                    text: item.city.toString(),
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
                          )));
                }).values,
              ],
            ),
          )
        ],
      );
    });
  }
}

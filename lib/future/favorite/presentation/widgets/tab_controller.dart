import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_cubit.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_state.dart';

class SegmentedButtonFavWidget extends StatelessWidget {
  const SegmentedButtonFavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FavoriteCubit, FavoriteState, int>(
        selector: (state) => state.indexStatusView,
        builder: (context, index) {
          var cubit = FavoriteCubit.get(context);
          return Row(
            children: [
              ...List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(34),
                    onTap: () {
                      cubit.changeStatusView(index);
                    },
                    child: Container(
                      width: 100,
                      height: 50,

                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        gradient: index == cubit.state.indexStatusView
                            ? LinearGradient(
                                colors: AppColors.linerColors,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )
                            : null,

                        color: index == cubit.state.indexStatusView
                            ? null
                            : Colors.white,
                        // shado white color

                        boxShadow: index != cubit.state.indexStatusView
                            ? [
                                const BoxShadow(
                                    color: Colors.black54, // shadow color
                                    blurRadius: 10, // shadow radius
                                    offset: Offset(1, 4), // shadow offset
                                    spreadRadius:
                                        0.1, // The amount the box should be inflated prior to applying the blur
                                    blurStyle:
                                        BlurStyle.normal // set blur style
                                    ),
                              ]
                            : null,
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Center(
                        child: TranslateText(
                          text: titleFav[index],
                          styleText: StyleText.h6,
                          colorText: index == cubit.state.indexStatusView
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}

List<String> titleFav = [
  'Ads',
  'Reels',
  'Occasions',
];

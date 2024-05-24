import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/home_state.dart';

import '../../../../config/routes/app_routes.dart';

enum CardPersonalWidgetType { home, drawer }

class CardPersonalWidget extends StatelessWidget {
  const CardPersonalWidget(
      {super.key, required this.bodyText, required this.type});

  final String bodyText;

  final CardPersonalWidgetType type;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      bool isGuest = state.userLocalModel?.user?.name?.isEmpty ?? true;
      String userName = isGuest ? "Guest" : state.userLocalModel!.user!.name!;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 37,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/images/person.jpeg'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'welcomeName'.tr(
                          args: [userName],
                        ),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('hey'.toSvg),
                    Gap(20),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TranslateText(
                      styleText: StyleText.h5,
                      text: bodyText.tr(),
                      colorText: type == CardPersonalWidgetType.drawer
                          ? Colors.white
                          : null,
                    ),
                    if (type == CardPersonalWidgetType.drawer) ...[
                      const SizedBox(
                        width: 5,
                      ),
                      Align(
                          alignment: Alignment.topCenter,
                          child:
                              Image.asset('gold'.toPng, width: 16, height: 16)),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}

class CardPersonalProfileWidget extends StatelessWidget {
  const CardPersonalProfileWidget(
      {super.key, required this.bodyText, required this.type});

  final String bodyText;

  final CardPersonalWidgetType type;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      bool isGuest = state.userLocalModel?.user?.name?.isEmpty ?? true;
      String userName = isGuest ? "Guest" : state.userLocalModel!.user!.name!;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('assets/images/person.jpeg'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.9,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: TranslateText(
                              maxLines: 1,
                              styleText: StyleText.h4,
                              colorText: type == CardPersonalWidgetType.drawer
                                  ? Colors.white
                                  : null,
                              text: 'welcomeName'.tr(args: [userName])),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        if (type == CardPersonalWidgetType.home)
                          SvgPicture.asset('hey'.toSvg),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TranslateText(
                        styleText: StyleText.h5,
                        text: bodyText.tr(),
                        colorText: type == CardPersonalWidgetType.drawer
                            ? Colors.white
                            : null,
                      ),
                      if (type == CardPersonalWidgetType.drawer) ...[
                        const SizedBox(
                          width: 5,
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset('gold'.toPng,
                                width: 16, height: 16)),
                      ],
                    ],
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          if (type == CardPersonalWidgetType.drawer)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (!isGuest) {
                          context.goNamed(Routes.editProfile);
                        }
                      },
                      icon: SvgPicture.asset(
                        'edit_profile'.toSvg,
                        width: 20,
                        height: 20,
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      );
    });
  }
}

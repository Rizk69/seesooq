import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/dotted_story_widget.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_state.dart';
import 'package:opensooq/future/home/presentation/widgets/banner_widget.dart';
import 'package:opensooq/future/home/presentation/widgets/booking_post_widget.dart';
import 'package:opensooq/future/home/presentation/widgets/card_personal_widget.dart';
import 'package:opensooq/future/home/presentation/widgets/category_widget.dart';

import 'my_story_widget.dart';

class StoryViewComponent extends StatefulWidget {
  const StoryViewComponent({super.key, required this.cubit});

  final HomeCubit cubit;

  @override
  State<StoryViewComponent> createState() => _StoryViewComponentState();
}

class _StoryViewComponentState extends State<StoryViewComponent> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardPersonalWidget(bodyText: 'lookingToday'.tr(), type: CardPersonalWidgetType.home),
          Hero(
            tag: 'search',
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              child: TextFormFiledApp(
                onTap: () {
                  context.goNamed(Routes.search);
                },
                hintText: 'search'.tr(),
                prefixIcon: 'search_bar',
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'jordan'.toPng,
                    width: 20,
                    height: 20,
                  ),
                ),
                textEditingController: TextEditingController(),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TranslateText(
              styleText: StyleText.h4,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              text: 'statusToday',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<StoryUserCubit, StoryUserState>(builder: (context, state) {
            var cubit = StoryUserCubit.get(context);
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const MyStoryWidget(),
                  ...List.generate(
                    state.usersStories?.info?.length ?? 0,
                    (index) {
                      if (HomeCubit.get(context).state.userLocalModel?.user?.id.toString() !=
                          (state.usersStories?.info?[index].userId.toString() ?? 0)) {
                        return Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(100),
                              hoverColor: Colors.transparent,
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                              onTap: () {
                                cubit.updateStatusOpening(statusOpening: StatusOpening.others, index: index);
                                context.goNamed(Routes.storyView, extra: {
                                  'userStory': state.usersStories?.info?[index].stories ?? [],
                                  'infoData': state.usersStories?.info?[index]
                                });
                              },
                              child: Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      DottedBorderExample(
                                        story: state.usersStories?.info?[index].stories ?? [],
                                        index: index,
                                        state: state,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: CircleAvatar(
                                          radius: kRadialReactionRadius + 10,
                                          backgroundImage: NetworkImage(
                                            state.usersStories?.info?[index].image ?? '',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  SizedBox(
                                    width: 80,
                                    child: TranslateText(
                                      styleText: StyleText.h6,
                                      text: state.usersStories?.info?[index].name ?? ' ',
                                      fontWeight: FontWeight.w600,
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ],
              ),
            );
          }),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: BannerWidget(cubit: widget.cubit),
          ),
          ...[
            const SizedBox(
              height: 15,
            ),
            const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CategoryWidget(),
              BookingPostWidget(),
            ])
          ]
        ],
      ),
    );
  }
}

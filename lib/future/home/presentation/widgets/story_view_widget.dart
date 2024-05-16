import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/data/models/users_story_model.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_state.dart';
import 'package:story_view/story_view.dart';

class StoryViewWidget extends StatelessWidget {
  StoryViewWidget({super.key, required this.userStory, required this.infoData});

  final List<StoriesData> userStory;
  final InfoData infoData;

  final controller = StoryController();

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      body: BlocBuilder<StoryUserCubit, StoryUserState>(
          builder: (context, state) {
        print(state.storyModel?.stories?.length);
        var cubit = StoryUserCubit.get(context);
        var storyItems = userStory.isEmpty
            ? (state.storyModel?.stories?[state.selectedStoryIndex])
            : userStory[0];
        return Stack(
          children: [
            StoryView(
              storyItems: state.statusOpening == StatusOpening.me
                  ? state.storyItems
                  : state.storyUsers,
              controller: controller,

              // pass controller here too
              repeat: true,
              inline: true,

              // should the stories be slid forever
              onStoryShow: (s, a) {
                if (state.statusOpening == StatusOpening.me) {
                  cubit.selectStory(state.storyItems.indexOf(s));
                } else {
                  cubit.selectStory(state.storyUsers.indexOf(s));
                  cubit.viewStory(
                      id: int.parse(storyItems?.id.toString() ?? '0'));
                }

                // get current story index
              },

              onComplete: () {
                context.goNamed(Routes.home);
                cubit.selectStory(0);
              },

              onVerticalSwipeComplete: (direction) {
                if (direction == Direction.down) {
                  context.goNamed(Routes.home);
                  cubit.selectStory(0);
                } else {
                  if (storyItems?.viewers?.isNotEmpty ?? false) {
                    controller.pause();

                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(0.0)),
                      ),
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: context.width,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              height: 50,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    HexColor('#4C0497'),
                                    HexColor('#4C0497').withOpacity(0.5),
                                  ],
                                ),
                              ),
                              child: TranslateText(
                                text: 'viewedPeople'.tr(args: [
                                  storyItems?.viewers?.length.toString() ?? '0'
                                ]),
                                styleText: StyleText.h5,
                                colorText: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ...storyItems?.viewers
                                    ?.map((e) => SizedBox(
                                          height: 50,
                                          child: ListTile(
                                              leading: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                    e['image'] ?? ''),
                                              ),
                                              title: Text(
                                                  e['name'].toString() ?? ''),
                                              subtitle:
                                                  const Text('Add Time Here'),
                                              trailing: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.grey
                                                          .withOpacity(0.6),
                                                    ),
                                                    child: const Icon(
                                                      Icons.message,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.grey
                                                          .withOpacity(0.6),
                                                    ),
                                                    child: const Icon(
                                                      Icons.call,
                                                      color: Colors.white,
                                                      size: 15,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ))
                                    .toList() ??
                                [],
                            const SizedBox(
                              height: 40,
                            )
                          ],
                        );
                      },
                    );
                  }
                }
              },
            ),
            Positioned(
              top: 80,
              child: SizedBox(
                height: 50,
                width: context.width,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: infoData.image == null
                        ? null
                        : NetworkImage(infoData.image ?? ''),
                  ),
                  visualDensity: VisualDensity.comfortable,
                  minLeadingWidth: 10,
                  minVerticalPadding: 0,
                  horizontalTitleGap: 7,
                  titleAlignment: ListTileTitleAlignment.threeLine,
                  title: TranslateText(
                    text: infoData.name ?? 'Your Story',
                    styleText: StyleText.h5,
                    colorText: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  subtitle: TranslateText(
                    text: storyItems?.createdAt ?? '',
                    styleText: StyleText.h6,
                    colorText: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                  trailing: state.statusOpening == StatusOpening.others
                      ? null
                      : IconButton(
                          onPressed: () {
                            controller.pause();
                            showCupertinoModalPopup(
                              context: context,
                              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                              builder: (context) {
                                return SizedBox(
                                  width: context.width * 0.9,
                                  child: CupertinoActionSheet(
                                    actions: [
                                      CupertinoActionSheetAction(
                                        onPressed: () {},
                                        child: const Text('Report...'),
                                      ),
                                      CupertinoActionSheetAction(
                                        onPressed: () {
                                          StoryUserCubit.get(context)
                                              .deleteMyStory();
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Delete...'),
                                      ),
                                    ],
                                    title: const Text('Story Options'),
                                    cancelButton: CupertinoActionSheetAction(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Cancel'),
                                    ),
                                  ),
                                );
                              },
                            ).whenComplete(() => controller.play());
                          },
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),
            ),
            if (state.statusOpening == StatusOpening.me)
              Positioned(
                bottom: 6,
                child: SizedBox(
                  height: 50,
                  width: context.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TranslateText(
                          styleText: StyleText.h5,
                          text: storyItems?.viewers?.length.toString() ?? '0',
                          colorText: Colors.white),
                      IconButton(
                        icon: const Icon(
                          Icons.visibility_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          context.goNamed(Routes.home);
                        },
                      ),
                    ],
                  ),
                ),
              )
          ],
        );
      }),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/reels/data/model/my_reels_model.dart';
import 'package:opensooq/future/reels/presentation/bloc/reels_bloc.dart';
import 'package:story_view/story_view.dart';

class ViewMyReel extends StatefulWidget {
  const ViewMyReel({super.key, required this.reels});

  final MyReels reels;
  @override
  _ViewMyReelState createState() => _ViewMyReelState();
}

class _ViewMyReelState extends State<ViewMyReel> {
  final StoryController controller = StoryController();
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReelsBloc, ReelsState>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: StoryView(
              controller: controller,
              inline: false,
              onVerticalSwipeComplete: (direction) {
                if (direction == Direction.down) {
                  context.goNamed(Routes.myReels);
                  // cubit.selectStory(0);
                } else {
                  if (widget.reels.video != null) {
                    controller.pause();

                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(0.0)),
                      ),
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: context.width,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                                text: 'viewedPeople'.tr(args: [widget.reels.viewersCount.toString()]),
                                styleText: StyleText.h5,
                                colorText: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            ...widget.reels.viewers
                                    ?.map((e) => SizedBox(
                                          height: 50,
                                          child: ListTile(
                                              leading: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(e.image ?? ''),
                                              ),
                                              title: Text(e.name.toString() ?? ''),
                                              subtitle: const Text('Add Time Here'),
                                              trailing: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets.all(8),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.grey.withOpacity(0.6),
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
                                                    padding: const EdgeInsets.all(8),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.grey.withOpacity(0.6),
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
                    ).whenComplete(() {
                      controller.play();
                    });
                  }
                }
              },
              onStoryShow: (value, index) {
                ReelsBloc.get(context).add(ReelsEvent.viewReel(widget.reels.id.toString()));
              },
              progressPosition: ProgressPosition.top,
              onComplete: () {
                Navigator.pop(context);
              },
              storyItems: [
                StoryItem.pageVideo(
                  widget.reels.video!.toString(),
                  controller: controller,
                  duration: const Duration(seconds: 10),
                )
              ]),
        ),
      );
    });
  }
}

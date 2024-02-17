import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_state.dart';

class MyStoryWidget extends StatelessWidget {
  const MyStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StoryUserCubit, StoryUserState>(listener: (context, state) {
      if (state.createStoryStatus == CreateStoryStatus.picked) {
        context.pushNamed(Routes.designStory);
      }
    }, builder: (context, state) {
      return Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  if (state.storyItems.isNotEmpty) {
                    StoryUserCubit.get(context).updateStatusOpening(statusOpening: StatusOpening.me);
                    context.goNamed(Routes.storyView, extra: {'': ""});
                  } else {
                    StoryUserCubit.get(context).pickImage();
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: HexColor('#4C0497'), width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: kRadialReactionRadius + 18,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                        radius: kRadialReactionRadius + 14,
                        child: Icon(
                          Icons.person,
                          size: 40,
                        )),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      StoryUserCubit.get(context).pickImage();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: HexColor('F05A35'), boxShadow: const [BoxShadow(color: Colors.white)]),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          const TranslateText(
            styleText: StyleText.h6,
            text: 'Create Story',
            fontWeight: FontWeight.w600,
            fontSize: 13,
          )
        ],
      );
    });
  }
}

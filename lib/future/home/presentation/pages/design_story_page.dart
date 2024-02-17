import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_state.dart';

class DesignStoryPage extends StatefulWidget {
  const DesignStoryPage({super.key});

  @override
  State<DesignStoryPage> createState() => _DesignStoryPageState();
}

class _DesignStoryPageState extends State<DesignStoryPage> {
  TextEditingController captionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TranslateText(text: 'New Story', styleText: StyleText.h4),
      ),
      body: BlocConsumer<StoryUserCubit, StoryUserState>(
        listener: (context, state) {
          if (state.createStoryStatus == CreateStoryStatus.loaded) {
            context.goNamed(Routes.home);
          }
        },
        builder: (
          context,
          state,
        ) {
          return Column(
            children: [
              Expanded(
                flex: 8,
                child: Image.file(
                  File(state.imageFile?.path ?? ''),
                  width: context.width,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                flex: MediaQuery.of(context).viewPadding.bottom == 0 ? 2 : 1,
                child: Container(
                  width: context.width,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: SizedBox(
                          child: TextFormFiledApp(
                            hintText: 'Write a caption...',
                            textEditingController: captionController,
                            textInputAction: TextInputAction.done,
                          ),
                        )),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            StoryUserCubit.get(context).createMyStory(
                              image: state.imageFile?.path ?? '',
                              caption: captionController.text,
                            );
                          },
                          child: Container(
                              height: 45,
                              width: 45,
                              padding: const EdgeInsets.only(top: 0),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                child: state.createStoryStatus == CreateStoryStatus.loading
                                    ? const CircularProgressIndicator.adaptive()
                                    : Image.asset(
                                        'send_story_icon'.toPng,
                                        height: 35,
                                        width: 35,
                                        fit: BoxFit.cover,
                                      ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

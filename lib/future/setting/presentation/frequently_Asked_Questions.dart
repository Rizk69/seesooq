import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/setting/presentation/cubit/frequently-asked-questions_cubit/frequently-asked-questions_cubit.dart';
import 'package:opensooq/future/setting/presentation/cubit/frequently-asked-questions_cubit/frequently-asked-questions_state.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/widget/text_translate_manager.dart';

class FrequentlyAskedQuestionsPage extends StatelessWidget {
  const FrequentlyAskedQuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderScreens(
                    title: 'fAQs',
                    onPressed: () {
                      context.go(Routes.setting);
                    }),
                const SizedBox(height: 40),
                BlocProvider(
                  create: (context) =>
                      FrequentlyAskedCubit()..getFrequentlyAsked(),
                  child:
                      BlocBuilder<FrequentlyAskedCubit, FrequentlyAskedState>(
                    builder: (context, state) {
                      if (state.frequentlyAskedStatus ==
                          FrequentlyAskedStatus.loading) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (state.frequentlyAskedStatus ==
                          FrequentlyAskedStatus.error) {
                        return const Center(child: Text('Error'));
                      }
                      if (state.frequentlyAskedStatus ==
                              FrequentlyAskedStatus.loaded &&
                          state.frequentlyAskedModel != null) {
                        return ListView.builder(
                          itemBuilder: (context, index) {
                            var frequentlyAskedModel =
                                state.frequentlyAskedModel?.data!.data?[index];

                            return Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ExpansionTile(
                                  title: titleText(
                                      frequentlyAskedModel?.title ?? ''),
                                  leading: SvgPicture.asset(
                                      'assets/images/svg/qestion.svg'),
                                  backgroundColor: Colors.transparent,
                                  collapsedBackgroundColor: Colors.transparent,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Text(
                                          frequentlyAskedModel?.description ??
                                              ''),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount:
                              state.frequentlyAskedModel?.data!.data?.length,
                          shrinkWrap: true,
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget titleText(String title) {
    return TranslateText(
      styleText: StyleText.h4,
      colorText: HexColor('#4C0497'),
      fontWeight: FontWeight.w500,
      text: title,
    );
  }
}

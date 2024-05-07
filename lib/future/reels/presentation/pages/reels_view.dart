import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/reels/presentation/bloc/reels_bloc.dart';
import 'package:opensooq/future/reels/presentation/pages/widget/reels_list_widget.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/text_translate_manager.dart';

class EmptyReelsView extends StatelessWidget {
  const EmptyReelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: AnimatedCheck(img: "assets/images/videoreels.png")),
          const SizedBox(
            height: 34,
          ),
          Center(child: titleText('empty_reels_title', HexColor('#4C0497'), StyleText.h4)),
          const SizedBox(
            height: 10,
          ),
          Center(child: titleText('des_location', HexColor('#707070'), StyleText.h5)),
          Center(child: titleText('des_location1', HexColor('#707070'), StyleText.h5)),
        ],
      ),
    );
  }

  Widget titleText(String title, Color color, StyleText styleText) {
    return TranslateText(
      styleText: styleText,
      colorText: color,
      fontWeight: FontWeight.w500,
      text: title,
    );
  }
}

class ReelsView extends StatelessWidget {
  const ReelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.all(13),
          child: FloatingActionButton(
            isExtended: true,
            backgroundColor: const Color(0XFFF05A35),
            onPressed: () {
              context.goNamed(Routes.myReels);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(
              'vedioreels'.toSvg,
              height: 40,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderScreens(
                title: 'reels',
                onPressed: () {
                  context.go(Routes.home);
                },
              ),
              BlocBuilder<ReelsBloc, ReelsState>(
                builder: (context, state) {
                  if (state.reels?.userReels?.isEmpty ?? true) {
                    return const EmptyReelsView();
                  }
                  return ReelsListWidget(
                    reels: state.reels?.userReels ?? [],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

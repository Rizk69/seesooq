import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/reels/presentation/bloc/reels_bloc.dart';
import 'package:opensooq/future/reels/presentation/pages/widget/reels_list_widget.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/text_translate_manager.dart';
import '../../../setting1/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import '../../../setting1/edit_profile/presentation/widgets/header_screen.dart';

class EmptyReelsView extends StatelessWidget {
  const EmptyReelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
        child: Column(
          children: [
            HeaderScreens(
                title: 'reels',
                onPressed: () {
                  context.go(Routes.home);
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.3,
            ),
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
            backgroundColor: Color(0XFFF05A35),
            onPressed: () {
              context.goNamed(Routes.myReels);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(
              'assets/images/svg/vedioreels.svg',
              height: 40,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
          child: Column(
            children: [
              HeaderScreens(
                title: 'reels',
                onPressed: () {
                  context.go(Routes.home);
                },
              ),
              const SizedBox(height: 10),
              BlocProvider(
                create: (context) => ReelsBloc()..add(const ReelsEvent.getReels()),
                child: BlocBuilder<ReelsBloc, ReelsState>(
                  builder: (context, state) {
                    return ReelsListWidget(
                      reels: state.reels,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

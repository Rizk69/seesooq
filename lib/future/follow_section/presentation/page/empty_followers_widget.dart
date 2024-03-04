import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/setting1/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import 'package:opensooq/future/setting1/edit_profile/presentation/widgets/header_screen.dart';

class FollowersEmptyPage extends StatelessWidget {
  const FollowersEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            HeaderScreens(
                title: 'followers',
                onPressed: () {
                  context.go(Routes.profilePage);
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.3,
            ),
            const Center(child: AnimatedCheck(img: "assets/images/followers.png")),
            const SizedBox(
              height: 34,
            ),
            Center(child: titleText('لا يوجد متابَعين', HexColor('#4C0497'), StyleText.h4)),
            const SizedBox(
              height: 10,
            ),
            Center(child: titleText('يبدو أنك لم تتابع أي شخص بعد، سيظهر', HexColor('#707070'), StyleText.h5)),
            Center(child: titleText('... من تتابعهم هنا', HexColor('#707070'), StyleText.h5)),
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

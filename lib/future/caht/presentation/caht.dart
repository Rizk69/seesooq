import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/future/caht/widget/empty_screen.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/profile_photo.dart';

import '../../../core/utils/custom_failed_app.dart';
import '../../../core/widget/text_translate_manager.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
        floatingActionButton: InkWell(
          onTap: () {
            context.goNamed(Routes.newChatPage);
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(color: HexColor('F05A35'), borderRadius: BorderRadius.circular(30)),
            child: SvgPicture.asset('assets/images/svg/message_cat.svg', color: Colors.white, height: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Column(
              children: [
                HeaderScreens(
                  title: 'الرسائل',
                  onPressed: () {
                    context.goNamed(Routes.home);
                  },
                ),
                const SizedBox(height: 30),
                CustomTextFormFiledApp(
                  title: 'ابحث ...',
                  onChanged: (value) {},
                  imgIconSvg: 'assets/images/svg/search.svg',
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: InkWell(
                      onTap: () {
                        context.goNamed(Routes.chatMassagePage);
                      },
                      child: ProfileChatCard(img: '', name: 'آدم يوسف', des: 'هذا مثال لنص يمكن أن يستبدل في نفس.... ', count: '1'),
                    ),
                  ),
                  itemCount: 9,
                )
              ],
            ),
          ),
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

  Widget emptyScreen() {
    return EmptyScreen(
      title: 'صندوق الرسائل فارغ',
      des1: 'يبدو أنك لم تتلق أو تكتب أي رسائل بعد، ',
      des2: '...ستظهر رسائلك هنا',
      img: "assets/images/Masseage.png",
    );
  }
}

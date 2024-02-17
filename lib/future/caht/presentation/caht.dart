import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/caht/widget/empty_screen.dart';

import '../../../core/utils/custom_failed_app.dart';
import '../../../core/widget/text_translate_manager.dart';
import '../../setting1/edit_profile/presentation/widgets/header_screen.dart';
import '../../setting1/edit_profile/presentation/widgets/profile_photo.dart';


class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: InkWell(
        onTap: () {
          context.goNamed(Routes.newChatPage);
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: HexColor('F05A35'),
              borderRadius: BorderRadius.circular(30)),
          child: SvgPicture.asset('assets/images/svg/message_cat.svg',
              color: Colors.white, height: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              HeaderScreens(
                title: 'الرسائل',
                onPressed: () {
                  context.goNamed(Routes.home);
                },
              ),
              const SizedBox(height: 30),
              const CustomTextFormFiledApp(
                title: 'ابحث ...',
                imgIconSvg: 'assets/images/svg/search.svg',
              ),
              const SizedBox(height: 25),
              Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      ProfileStories(img: 'edit_profile'.toSvg),
                      Expanded(
                        child: SizedBox(
                          height: 90,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemBuilder: (context, index) => Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 2,
                                  color: HexColor('4C0497'),
                                ),
                              ),
                              child: const CircleAvatar(
                                radius: 31,
                                backgroundColor: Colors.red,
                                backgroundImage:
                                    AssetImage('assets/images/person.jpeg'),
                              ),
                            ),
                            itemCount: 8,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2.002,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: InkWell(
                          onTap: () {
                            context.goNamed(Routes.chatMassagePage);
                          },
                          child: ProfileChatCard(
                              img: '',
                              name: 'آدم يوسف',
                              des: 'هذا مثال لنص يمكن أن يستبدل في نفس.... ',
                              count: '1'),
                        ),
                      ),
                      itemCount: 9,
                      scrollDirection: Axis.vertical,
                    )),
              )
            ],
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

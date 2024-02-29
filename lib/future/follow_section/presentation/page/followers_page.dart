import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/text_translate_manager.dart';
import '../../../setting1/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import '../../../setting1/edit_profile/presentation/widgets/header_screen.dart';
import '../../../profile/cubit/follow_cubit.dart';

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
            Center(child: AnimatedCheck(img: "assets/images/followers.png")),
            const SizedBox(
              height: 34,
            ),
            Center(
                child: titleText(
                    'لا يوجد متابَعين', HexColor('#4C0497'), StyleText.h4)),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: titleText('يبدو أنك لم تتابع أي شخص بعد، سيظهر',
                    HexColor('#707070'), StyleText.h5)),
            Center(
                child: titleText(
                    '... من تتابعهم هنا', HexColor('#707070'), StyleText.h5)),
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

class FollowersPage extends StatelessWidget {
  const FollowersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
              child: Column(
                children: [
                  HeaderScreens(
                      title: 'followers',
                      onPressed: () {
                        context.go(Routes.profilePage);
                      }),
                  const SizedBox(
                    height: 25,
                  ),
                  const CustomTextFormFiledApp(
                    title: 'ابحث ...',
                    imgIconSvg: 'assets/images/svg/search.svg',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            BlocProvider(
              create: (context) => FollowCubit(),
              child: Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      BlocBuilder<FollowCubit, FollowStatus>(
                    builder: (context, followState) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // : Color(0xFF4C0497),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0,
                              blurRadius: 15,
                              offset: Offset(1, 1.1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                BlocProvider.of<FollowCubit>(context)
                                    .toggleFollow();
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 27, vertical: 11),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xFF4C0497), width: 1),
                                  borderRadius: BorderRadius.circular(50),
                                  gradient:
                                      followState == FollowStatus.following
                                          ? const LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xFF4C0497),
                                                Color(0xFF4C0497),
                                                Color(0xFF4C0497),
                                                Colors.white,
                                                Color(0xFF4C0497),
                                              ],
                                              stops: [
                                                0.0,
                                                0.0,
                                                0.5,
                                                1.5,
                                                1
                                              ], // Stops at 0%, 50%, and 100%
                                            )
                                          : LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Colors.white,
                                                Colors.white,
                                              ],
                                              stops: [
                                                0.0,
                                                0.0,
                                              ], // Stops at 0%, 50%, and 100%
                                            ),
                                ),
                                child: Text(
                                  followState == FollowStatus.following
                                      ? 'أتابع'
                                      : 'متابعة +',
                                  style: TextStyle(
                                      color:
                                          followState == FollowStatus.following
                                              ? Colors.white
                                              : Colors.black),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Text('آدم يوسف',
                                style: TextStyle(
                                    fontSize: 18)), // Adjust font size
                            const SizedBox(width: 10),
                            Container(
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: const CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/person.jpeg'),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  itemCount: 6,
                ),
              ),
            )
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

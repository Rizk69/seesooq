import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/widget/text_translate_manager.dart';
import '../../setting1/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import '../../setting1/edit_profile/presentation/widgets/header_screen.dart';

class EmptyReelsView extends StatelessWidget {
  const EmptyReelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
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
            const Center(
                child: AnimatedCheck(img: "assets/images/videoreels.png")),
            const SizedBox(
              height: 34,
            ),
            Center(
                child: titleText(
                    'empty_reels_title', HexColor('#4C0497'), StyleText.h4)),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: titleText(
                    'des_location', HexColor('#707070'), StyleText.h5)),
            Center(
                child: titleText(
                    'des_location1', HexColor('#707070'), StyleText.h5)),
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
  const ReelsView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
        child: Column(
          children: [
            HeaderScreens(
              title: 'reels',
              onPressed: () {
                context.go(Routes.home);
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 2),
                        blurRadius: 9,
                      )
                    ],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/car_reels.png',
                          fit: BoxFit.fitHeight,
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: 280,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/images/person.jpg',
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'أدم يوسف',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '16 ثانيه',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 2),
                        blurRadius: 9,
                      )
                    ],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(19),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/car_reels.png',
                          fit: BoxFit.fitHeight,
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: 280,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  'assets/images/person.jpg',
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'أدم يوسف',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '16 ثانيه',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

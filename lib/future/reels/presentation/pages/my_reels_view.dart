import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/reels/data/model/my_reels_model.dart';
import 'package:opensooq/future/reels/presentation/bloc/reels_bloc.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/text_translate_manager.dart';

class EmptyMyReelsView extends StatelessWidget {
  const EmptyMyReelsView({super.key});

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
                  context.goNamed(Routes.reels);
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

class MyReelsView extends StatelessWidget {
  const MyReelsView({super.key});

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
                context.go(Routes.reels);
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<ReelsBloc, ReelsState>(builder: (context, state) {
              return Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: state.myReels?.myReels?.length ?? 0,
                  itemBuilder: (context, index) {
                    final MyReels reel = state.myReels!.myReels![index];

                    return Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
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
                            Positioned(
                              bottom: 15,
                              right: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        reel.createAt ?? '',
                                        style: const TextStyle(color: Colors.white, fontSize: 12),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.remove_red_eye_outlined,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            reel.viewersCount.toString() ?? '0',
                                            style: TextStyle(color: Colors.white, fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: InkWell(
                                onTap: () {
                                  ReelsBloc.get(context).add(ReelsEvent.deleteReel(reel.id.toString()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            })
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 80,
        height: 80,
        margin: EdgeInsets.all(13),
        child: FloatingActionButton(
          isExtended: true,
          backgroundColor: Color(0XFFF05A35),
          onPressed: () {
            ReelsBloc.get(context).add(const ReelsEvent.createReel());
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
    );
  }
}

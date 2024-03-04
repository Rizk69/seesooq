import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/cache_network_image.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/future/follow_section/presentation/bloc/follow_bloc.dart';
import 'package:opensooq/future/follow_section/presentation/bloc/follow_event.dart';
import 'package:opensooq/future/follow_section/presentation/bloc/follow_state.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/widget/text_translate_manager.dart';
import '../../../setting1/edit_profile/presentation/widgets/header_screen.dart';

class FollowingPage extends StatelessWidget {
  const FollowingPage({super.key});

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
                      title: 'following',
                      onPressed: () {
                        context.go(Routes.profilePage);
                      }),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextFormFiledApp(
                    title: 'ابحث ...',
                    onChanged: (value) {},
                    imgIconSvg: 'assets/images/svg/search.svg',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            BlocBuilder<FollowBloc, FollowState>(builder: (context, state) {
              var cubit = FollowBloc.get(context);
              if (state.followingStatus == FollowingStatus.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.followingStatus == FollowingStatus.loaded) {
                return Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      var user = state.followingUsers?.data?[index];
                      return Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            horizontalTitleGap: 0,
                            leading: CircleAvatar(
                              radius: 35,
                              child: CacheNetworkImageApp(
                                urlImage: user?.image ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(user?.name.toString() ?? '', style: const TextStyle(fontSize: 18)), // Adjust font size

                            trailing: GestureDetector(
                              onTap: () {
                                if (user?.isFollow ?? false) {
                                  cubit.add(FollowEvent.removeFollowers(user?.id ?? 0));
                                } else {
                                  cubit.add(FollowEvent.addFollow(user?.id ?? 0));
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 11),
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xFF4C0497), width: 1),
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: (user?.isFollow ?? false)
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
                                          stops: [0.0, 0.0, 0.5, 1.5, 1], // Stops at 0%, 50%, and 100%
                                        )
                                      : const LinearGradient(
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
                                child: TranslateText(
                                  text: (user?.isFollow ?? false) ? '${user?.isFollow}' : '${user?.isFollow}',
                                  styleText: StyleText.h5,
                                  colorText: (user?.isFollow ?? false) ? Colors.white : const Color(0xFF4C0497),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ));
                    },
                    itemCount: state.followingUsers?.data?.length ?? 0,
                  ),
                );
              }
              return const Icon(
                Icons.error,
                size: 50,
              );
            })
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

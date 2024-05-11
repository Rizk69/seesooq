import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/widgets/my_option_drawer_widget.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/login/presentation/cubit/login_state.dart';
import 'package:opensooq/future/profile/cubit/profile_cubit/profile_cubit.dart';
import 'package:opensooq/future/profile/cubit/profile_cubit/profile_state.dart';
import 'package:opensooq/future/profile/presentation/widgets/header_profile.dart';
import 'package:opensooq/future/setting/data/models/general_statistic_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;

    // return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
    return BlocProvider(
      create: (context) => ProfileCubit()..getStatistic(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TranslateText(
                styleText: StyleText.h4,
                colorText: AppColors.primary,
                fontWeight: FontWeight.bold,
                text: 'profile',
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              context.pushNamed(Routes.home);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    HeaderProfile(user: user),
                  ],
                ),
              ),
              const Gap(10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TranslateText(
                      styleText: StyleText.h4,
                      colorText: HexColor('#200E32'),
                      fontWeight: FontWeight.bold,
                      text: 'statistics_account',
                    ),
                  ),
                ],
              ),
              BlocBuilder<ProfileCubit, ProfileState>(
                builder: (context, state) {
                  if (state.profileStatus == ProfileStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.profileStatus == ProfileStatus.error) {
                    return const Center(child: Text('Error'));
                  }
                  if (state.profileStatus == ProfileStatus.loaded) {
                    var model = state.statisticModel;
                    if (model != null) {
                      return AlignedGridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(8),
                        itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 0.5,
                                offset: const Offset(
                                    0, 0.5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ListTile(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  {
                                    context.pushNamed(Routes.followersView);
                                  }
                                  break;
                                case 1:
                                  {
                                    context.pushNamed(Routes.followingView);
                                  }
                                  break;
                                case 2:
                                  {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog(
                                          backgroundColor: Colors.black,
                                          content: Text('2'),
                                          // Add AlertDialog content here for index 0
                                        );
                                      },
                                    );
                                  }
                                  // Handle action for index 2
                                  break;
                                case 3:
                                  {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog(
                                          backgroundColor: Colors.black,
                                          content: Text('3'),
                                          // Add AlertDialog content here for index 0
                                        );
                                      },
                                    );
                                  }
                                  break;
                                case 4:
                                  {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog(
                                          backgroundColor: Colors.black,
                                          content: Text('4'),
                                          // Add AlertDialog content here for index 0
                                        );
                                      },
                                    );
                                  }
                                  break;
                                case 5:
                                  {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog(
                                          backgroundColor: Colors.black,
                                          content: Text('5'),
                                          // Add AlertDialog content here for index 0
                                        );
                                      },
                                    );
                                  }
                                  break;

                                default:
                                  Container();
                              }
                            },
                            title: TranslateText(
                              styleText: StyleText.h6,
                              colorText: AppColors.grey,
                              fontWeight: FontWeight.normal,
                              text: _getTitles()[index],
                            ),
                            subtitle: TranslateText(
                              styleText: StyleText.h6,
                              colorText: HexColor('#200E32'),
                              fontWeight: FontWeight.w500,
                              text: _valueTitles(model)[index],
                            ),
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor:
                                  HexColor('#4C0497').withOpacity(0.1),
                              child: Image.asset(
                                _iconTitles()[index],
                                width: 35,
                                height: 35,
                              ),
                            ),
                          ),
                        ),
                        itemCount: 6,
                      );
                    } else {
                      return const Center(child: Text('no data'));
                    }
                  } else {
                    return const Center(child: Text('something error'));
                  }
                },
              ),
              const Gap(10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TranslateText(
                      styleText: StyleText.h4,
                      colorText: HexColor('#200E32'),
                      fontWeight: FontWeight.bold,
                      text: 'fast_shortcuts',
                    ),
                  ),
                ],
              ),
              const Gap(10),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: GradientText(
                      titles[index].tr(),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.grey.withOpacity(0.7),
                          HexColor('#000000').withOpacity(0.7),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    onTap: () {
                      if (titles[index].toString() == 'ads_drawer') {
                        context.pushNamed(Routes.myAds);
                      } else if (titles[index].toString() == 'reels_drawer') {
                        context.pushNamed(Routes.reels);
                      } else if (titles[index].toString() == 'wallet_drawer') {
                        context.pushNamed(Routes.wallet);
                      } else if (titles[index].toString() == 'package_drawer') {
                        context.pushNamed(Routes.packages);
                      } else if (titles[index].toString() ==
                          'favorite_drawer') {
                        context.pushNamed(Routes.favorite);
                      } else if (titles[index].toString() == 'setting_drawer') {
                        context.pushNamed(Routes.setting);
                      } else if (titles[index].toString() == 'blogs_drawer') {
                        context.pushNamed(Routes.blogsRoute);
                      } else if (titles[index].toString() == 'logout') {
                        LoginCubit.get(context).deleteLocalUser().then((value) {
                          context.pushNamed(Routes.login);
                        });
                      }
                    },
                    leading: CircleAvatar(
                      backgroundColor: HexColor('#F9F9F9'),
                      radius: 25,
                      child: SvgCustomImage(
                        image: titles[index].toSvg,
                        width: 25,
                        height: 25,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    horizontalTitleGap: 6,
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.grey.withOpacity(0.7),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Gap(10);
                },
              )
            ],
          ),
        ),
      ),
    );
    // }
    // );
  }

  List<String> _getTitles() {
    return [
      'Followers'.tr(),
      'Following'.tr(),
      'Account Views'.tr(),
      'Account Rate'.tr(),
      'Ads Number'.tr(),
      'Ads Views'.tr(),
    ];
  }

  List<String> _valueTitles(GeneralStatisticModel statisticModel) {
    return [
      '${statisticModel.countFollowers} Followers',
      '${statisticModel.countFollowing} Following',
      '${statisticModel.countAccountView} Views',
      '${statisticModel.countAccountRatings}',
      '${statisticModel.countAdvertisementNumbers} Ads',
      '${statisticModel.countAdvertisementViews} Views',
    ];
  }

  List<String> _iconTitles() {
    return [
      'forward_down'.toPng,
      'forward_up'.toPng,
      'view_account'.toPng,
      'rate_account'.toPng,
      'ads_number'.toPng,
      'view_ads'.toPng,
    ];
  }
}

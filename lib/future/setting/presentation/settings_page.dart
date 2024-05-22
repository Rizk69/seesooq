import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/profile/presentation/widgets/card_list_items.dart';

import 'edit_profile/presentation/widgets/header_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<Map<String, String>> contacts = [
    {'title': 'account_management'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'notifications'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'language'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'mode'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'privacy_policy'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'terms_and_conditions'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'market_watch'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'contact_us'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'fAQs'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'app_sharing'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderScreens(
                  title: 'setting',
                  onPressed: () {
                    context.pop();
                  },
                ),
                const Gap(24),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: contacts.length,
                      itemBuilder: (context, index) {
                        final contact = contacts[index];
                        return InkWell(
                          onTap: () {
                            switch (index) {
                              case 0:
                                {
                                  context.pushNamed(Routes.accountMangePage);
                                }
                                break;
                              case 1:
                                {
                                  context.pushNamed(
                                    Routes.notificationPage,
                                  );
                                }
                                break;
                              case 2:
                                {
                                  context.pushNamed(
                                    Routes.changeLanguagePage,
                                  );
                                }
                                break;
                              case 3:
                                {
                                  context.pushNamed(
                                    Routes.changeThemePage,
                                  );
                                }
                                break;
                              case 4:
                                {
                                  context.pushNamed(
                                    Routes.privacyScreen,
                                  );
                                }
                                break;
                              case 5:
                                {
                                  context.pushNamed(
                                    Routes.termsConditionsScreen,
                                  );
                                }
                                break;
                              case 6:
                                {
                                  context.pushNamed(
                                    Routes.lookAtMarket,
                                  );
                                }
                                break;
                              case 7:
                                {
                                  context.pushNamed(
                                    Routes.connectWithUsPage,
                                  );
                                }
                                break;
                              case 8:
                                {
                                  context.pushNamed(
                                    Routes.frequentlyAskedQuestions,
                                  );
                                }
                                break;

                              default:
                                Container();
                            }
                          },
                          child: CardListItems(
                            index: index,
                            title: contact['title']!,
                            des: contact['des']!,
                            img: titles[index].toSvg,
                            indexActive: false,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Gap(24);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

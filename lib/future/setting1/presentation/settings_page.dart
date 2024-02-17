import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/profile/presentation/widgets/card_list_items.dart';

import '../edit_profile/presentation/widgets/header_screen.dart';

class SettingsPage extends StatelessWidget {
  List<Map<String, String>> contacts = [
    {'title': 'إدارة الحساب', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'الإشعارات', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'اللغة', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'الوضع', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'سياسة الخصوصية', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'الشروط والأحكام', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'عن شوف السوق', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'تواصل معنا', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'الأسئلة الشائعة', 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'مشاركة التطبيق', 'des': 'ضع وصف الإعدادات هنا'},
  ];

  SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            HeaderScreens(
              title: 'الإعدادات',
              onPressed: () {
                context.go(Routes.profilePage);
              },
            ),
            Expanded(
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
                              context.goNamed(Routes.accountMangePage);
                            }
                            break;
                          case 1:
                            {
                              context.goNamed(
                                Routes.notificationPage,
                              );
                            }
                            break;
                          case 2:
                            {
                              context.goNamed(
                                Routes.changeLanguagePage,
                              );
                            }
                            break;
                          case 3:
                            {
                              context.goNamed(
                                Routes.changeThemePage,
                              );
                            }
                            break;
                          case 4:
                            {
                              context.goNamed(
                                Routes.privacyScreen,
                              );
                            }
                            break;
                          case 5:
                            {
                              context.goNamed(
                                Routes.termsConditionsScreen,
                              );
                            }
                            break;
                          case 6:
                            {
                              context.goNamed(
                                Routes.lookAtMarket,
                              );
                            }
                            break;
                          case 7:
                            {
                              context.goNamed(
                                Routes.connectWithUsPage,
                              );

                            }
                            break;
                          case 8:
                            {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const AlertDialog(
                                    backgroundColor: Colors.black,
                                    content: Text('8'),
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
    );
  }
}

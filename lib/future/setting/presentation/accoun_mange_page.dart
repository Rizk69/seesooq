import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/profile/presentation/widgets/card_list_items.dart';

import '../../home/presentation/cubit/home_cubit.dart';
import 'edit_profile/presentation/widgets/header_screen.dart';

class AccountMangePage extends StatefulWidget {
  const AccountMangePage({super.key});

  @override
  State<AccountMangePage> createState() => _AccountMangePageState();
}

class _AccountMangePageState extends State<AccountMangePage> {
  List<Map<String, String>> contacts = [
    {'title': 'change_password'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'privacy'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'address'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
    {'title': 'delete_account'.tr(), 'des': 'ضع وصف الإعدادات هنا'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            HeaderScreens(
                title: 'account_management',
                onPressed: () {
                  context.go(Routes.setting);
                }),
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
                              context.go(Routes.changePassword);
                            }
                            break;
                          case 1:
                            {
                              context.go(Routes.securityPage);
                            }
                            break;
                          case 2:
                            {
                              context.go(Routes.emptyLocationPage);
                            }
                            break;
                          case 3:
                            {
                              context.go(Routes.removeAccountPage);
                            }
                            break;

                          default:
                            Container();
                        }
                      },
                      child: CardListItems(index: index, indexActive: true, title: contact['title']!, des: contact['des']!, img: titles[index].toSvg),
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

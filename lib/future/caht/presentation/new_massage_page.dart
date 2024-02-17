import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/media_query_values.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/custom_failed_app.dart';
import '../../../core/utils/hex_color.dart';
import '../../setting1/edit_profile/presentation/widgets/header_screen.dart';
import '../../setting1/edit_profile/presentation/widgets/profile_photo.dart';

class NewMassagePage extends StatelessWidget {
  const NewMassagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: [
          HeaderScreens(
            title: 'رسالة جديدة',
            onPressed: () {
              context.goNamed(Routes.chatPage);
            },
          ),
          const SizedBox(height: 10),
          const CustomTextFormFiledApp(
            title: 'ابحث ...',
            imgIconSvg: 'assets/images/svg/search.svg',
          ),
          const SizedBox(height: 5),
          Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: ProfileNewChatCard(img: 'edit_profile'.toSvg, name: 'آدم يوسف'),
                ),
                itemCount: 8,
                scrollDirection: Axis.vertical,
              ))
        ],
      ),
    );
  }
}

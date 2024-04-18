import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../config/routes/app_routes.dart';

class CommonQuestionsPage extends StatelessWidget {
  const CommonQuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: [
          HeaderScreens(
              title: 'الأسئلة الشائعة',
              onPressed: () {
                context.go(Routes.setting);
              }),
        ],
      ),
    );
  }
}

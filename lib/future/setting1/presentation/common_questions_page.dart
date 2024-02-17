import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/routes/app_routes.dart';
import '../edit_profile/presentation/widgets/header_screen.dart';

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

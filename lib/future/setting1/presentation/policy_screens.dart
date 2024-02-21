import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import '../../../config/routes/app_routes.dart';
import '../edit_profile/presentation/widgets/header_screen.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderScreens(
                title: 'privacy_policy',
                onPressed: () {
                  context.go(Routes.setting);
                },
              ),
              const SizedBox(height: 25),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customPolicy({
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 4),
        Text(
          description,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 16,
            color: HexColor('707070'),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderScreens(
                title: 'terms_and_conditions',
                onPressed: () {
                  context.go(Routes.setting);
                },
              ),
              const SizedBox(height: 25),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
              _customPolicy(
                title: 'ضع عنوان السياسة هنا',
                description:
                    'ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السياسة هنا ضع وصف السيا',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customPolicy({
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 4),
        Text(
          description,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 16,
            color: HexColor('707070'),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

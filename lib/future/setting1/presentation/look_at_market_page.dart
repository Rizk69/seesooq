import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';

import '../../../core/utils/hex_color.dart';
import '../../../core/utils/svg_custom_image.dart';
import '../edit_profile/presentation/widgets/header_screen.dart';

class LookAtMarketPage extends StatelessWidget {
  const LookAtMarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              HeaderScreens(
                title: 'عن شوف السوق',
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
              const Text(
                'تواصل معنا',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 24,),
              Row(
                children: [
                  _customCard(img: 'assets/images/svg/insicons.svg'),
                  _customCard(img: 'assets/images/svg/facicons.svg'),
                  _customCard(img: 'assets/images/svg/mobileicons.svg'),
                  _customCard(img: 'assets/images/svg/emailicons.svg'),
                ],
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

  Widget _customCard({required String img}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: HexColor('#F9F9F9'),
          borderRadius: BorderRadius.circular(20)
        ),
        child: SvgCustomImage(
          image: img,
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class LoginSplash extends StatefulWidget {
  const LoginSplash({super.key});

  @override
  State<LoginSplash> createState() => _LoginSplashState();
}

class _LoginSplashState extends State<LoginSplash> {
  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.goNamed(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: SvgPicture.asset(
                'logo-app'.toSvg,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.shopping_cart,
          color: HexColor("#6F62B1"),
          size: 50,
        ),
        const SizedBox(
          width: 20,
        ),
        TranslateText(
          text: 'Shopping',
          styleText: StyleText.h4,
          colorText: HexColor("#6F62B1"),
        ),
        const SizedBox(
          width: 20,
        ),
        const Icon(Icons.r_mobiledata)
      ],
    );
  }
}

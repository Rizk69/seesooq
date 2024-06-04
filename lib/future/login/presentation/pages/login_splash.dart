import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    print('isFirstTime');

    _checkFirstTimeUser();
  }

  Future<void> _checkFirstTimeUser() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstTime = true; //
        //prefs.getBool('isFirstTime') ?? true;
    if (isFirstTime) {
      await prefs.setBool('isFirstTime', false);
      _navigateToOnboarding();
    } else {
      _navigateToLogin();
    }
  }

  void _navigateToOnboarding() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.goNamed(Routes.onboarding);
    });
  }

  void _navigateToLogin() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.goNamed(Routes.login);
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 2), _checkFirstTimeUser
  //
  //       //() {
  //
  //       //
  //       //  }
  //       );
  // }
  //
  // Future<void> _checkFirstTimeUser() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final isFirstTime = prefs.getBool('isFirstTime') ?? true;
  //
  //   if (isFirstTime) {
  //     await prefs.setBool('isFirstTime', false);
  //     context.goNamed(Routes.onboarding);
  //   } else {
  //     context.goNamed(Routes.loginSplash);
  //   }
  // }

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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

enum LoginType { email, google, facebook, apple }

class ButtonSocialMedia extends StatelessWidget {
  const ButtonSocialMedia(
      {Key? key,
      required this.icon,
      required this.title,
      required this.loginType})
      : super(key: key);
  final Widget icon;
  final String title;
  final LoginType loginType;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * 0.8,
      child: ElevatedButton.icon(
        icon: icon,
        clipBehavior: Clip.antiAlias,
        label: TranslateText(
          styleText: StyleText.b1,
          fontSize: 16,
          text: title,
          colorText: HexColor("#6F62B1"),
        ),
        onPressed: () {
          context.goNamed(Routes.login);
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          shape: BeveledRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              side: BorderSide(
                  color: HexColor('#6F62B1'), strokeAlign: 1, width: 1)),
        ),
      ),
    );
  }
}

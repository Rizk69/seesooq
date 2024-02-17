import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => context.goNamed(Routes.home),
                  child: const TranslateText(
                    styleText: StyleText.h4,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    text: 'skip',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              children: [
                Lottie.asset(
                  'assets/images/lottie/intro.json',
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TranslateText(
                  styleText: StyleText.h4,
                  fontSize: 16,
                  text: 'closeDeal',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: context.width * 0.8,
                    child: CustomButtonWidget(
                        text: 'activate',
                        color: Colors.white,
                        onPressed: () {
                          context.goNamed(Routes.home);
                        })),
              ],
            ),
          )
        ],
      ),
    );
  }
}

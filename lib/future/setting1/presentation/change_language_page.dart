// change_language_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/utils/svg_custom_image.dart';
import '../cubit/lang_cubit/theme_cubit.dart';
import '../cubit/lang_cubit/theme_state.dart';
import '../edit_profile/presentation/widgets/header_screen.dart';

// change_language_page.dart

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          final languageCubit = context.read<ThemeCubit>();

          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                HeaderScreens(
                  title: 'اللغة',
                  onPressed: () {
                    context.go(Routes.setting);
                  },
                ),
                const SizedBox(
                  height: 37,
                ),
                buildRow(
                  context,
                  languageCubit,
                  'اللغة العربية',
                  'assets/images/svg/lan.svg',
                ),
                const SizedBox(
                  height: 20,
                ),
                buildRow(
                  context,
                  languageCubit,
                  'اللغة الإنجليزية',
                  'assets/images/svg/lan.svg',
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildRow(
      BuildContext context,
      ThemeCubit languageCubit,
      String title,
      String img,
      ) {
    return Row(
      children: [
        Switch(
          thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
          inactiveTrackColor: Colors.grey,
          trackOutlineColor:
          const MaterialStatePropertyAll<Color>(Colors.transparent),
          value: languageCubit.state.selectedLanguage.contains(title),
          onChanged: (value) {
            languageCubit.toggleLanguage(title);
          },
        ),
        const Spacer(),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        CircleAvatar(
          backgroundColor: HexColor('#F9F9F9'),
          radius: 25,
          child: SvgCustomImage(
            image: img,
            width: 25,
            height: 25,
          ),
        ),
      ],
    );
  }
}


class ChangeLightDarkPage extends StatelessWidget {
  const ChangeLightDarkPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          final themeCubit = context.read<ThemeCubit>();

          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              children: [
                HeaderScreens(
                  title: 'الوضع',
                  onPressed: () {
                    context.go(Routes.setting);
                  },
                ),
                const SizedBox(
                  height: 37,
                ),
                buildRow(
                  context,
                  themeCubit,
                  'الوضع النهاري',
                  'assets/images/svg/lightmode.svg',
                ),
                const SizedBox(
                  height: 20,
                ),
                buildRow(
                  context,
                  themeCubit,
                  'الوضع الليلي',
                  'assets/images/svg/darkmode.svg',
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildRow(
      BuildContext context,
      ThemeCubit themeCubit, // Change to ThemeCubit
      String title,
      String img,
      ) {
    return Row(
      children: [
        Switch(
          thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
          inactiveTrackColor: Colors.grey,
          trackOutlineColor:
          const MaterialStatePropertyAll<Color>(Colors.transparent),
          value: title == 'الوضع النهاري'
              ? themeCubit.state.selectedTheme.contains('الوضع النهاري')
              : themeCubit.state.selectedTheme.contains('الوضع الليلي'),
          onChanged: (value) {
            themeCubit.toggleDark(title);
          },
        ),
        const Spacer(),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        CircleAvatar(
          backgroundColor: HexColor('#F9F9F9'),
          radius: 25,
          child: SvgCustomImage(
            image: img,
            width: 25,
            height: 25,
          ),
        ),
      ],
    );
  }
}


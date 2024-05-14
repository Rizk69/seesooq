// change_language_page.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/setting/presentation/cubit/lang_cubit/theme_cubit.dart';
import 'package:opensooq/future/setting/presentation/cubit/lang_cubit/theme_state.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/utils/svg_custom_image.dart';

// change_language_page.dart

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => ThemeCubit(),
        child: BlocBuilder<LocaleCubit, LocaleState>(
          builder: (context, state) {
            final languageCubit = context.read<ThemeCubit>();
            print(state.locale.languageCode);
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                children: [
                  HeaderScreens(
                    title: 'language',
                    onPressed: () {
                      context.go(Routes.setting);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  buildRow(
                    context,
                    state,
                    'english',
                    'assets/images/svg/lan.svg',
                    state.locale.languageCode == 'en_US',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildRow(
    BuildContext context,
    LocaleState state,
    String title,
    String img,
    bool value,
  ) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      trailing: Switch(
        thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
        inactiveTrackColor: Colors.grey,
        trackOutlineColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
        value: value,
        onChanged: (value) {
          print(value);
          if (value) {
            context.setLocale(const Locale('en', 'US'));
            context.read<LocaleCubit>().changeLang('en_US');
          } else {
            context.setLocale(const Locale('ar', 'JO'));
            context.read<LocaleCubit>().changeLang('ar_JO');
          }
        },
      ),
      leading: CircleAvatar(
        backgroundColor: HexColor('#F9F9F9'),
        radius: 25,
        child: SvgCustomImage(
          image: img,
          width: 25,
          height: 25,
        ),
      ),
      title: Text(
        title.tr(),
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
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
                  title: 'mode',
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
                  'light',
                  'assets/images/svg/lightmode.svg',
                ),
                const SizedBox(
                  height: 20,
                ),
                buildRow(
                  context,
                  themeCubit,
                  'dark',
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
          trackOutlineColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
          value: title == 'الوضع النهاري'
              ? themeCubit.state.selectedTheme.contains('الوضع النهاري')
              : themeCubit.state.selectedTheme.contains('الوضع الليلي'),
          onChanged: (value) {
            themeCubit.toggleDark(title);
          },
        ),
        const Spacer(),
        Text(
          title.tr(),
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

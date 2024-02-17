import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:opensooq/core/utils/enums.dart';
import 'package:opensooq/future/setting/presentation/cubit/setting_state.dart';
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../cubit/setting_cubit.dart';

class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  bool isSwitched = false;
  bool isSwitchedEn = false;

  @override
  void initState() {
    Permission.notification.request().isDenied.then((value) {
      isSwitched = value;
      print(value);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(
        builder: (context, stateLocale) {
          var cubit = LocaleCubit.get(context);
      return BlocBuilder<SettingCubit, SettingState>(builder: (context, state) {
        return Expanded(
          child: SettingsList(
            sections: [
              // SettingsSection(
              //   title: const Text('Common'),
              //   tiles: <SettingsTile>[
              //     SettingsTile.switchTile(
              //       leading: const Icon(Icons.language),
              //       title: const Text('Language'),
              //       initialValue: isSwitchedEn,
              //       onToggle: (value) {
              //         if(cubit.state.locale == const Locale(AppStrings.englishCode)){
              //           setState(() {
              //             isSwitchedEn = value;
              //           });
              //
              //
              //
              //         }else{
              //           cubit.changeLang(langCode: AppStrings.englishCode);
              //         }
              //
              //       },
              //
              //       enabled: true,
              //       description: const Text('English'),
              //
              //     )
              //
              //     // SettingsTile.switchTile(
              //     //   onToggle: (value) {},
              //     //   initialValue: false,
              //     //   leading: const Icon(Icons.format_paint),
              //     //   title: const Text('Enable Dark Mode'),
              //     // ),
              //   ],
              // ),

              if (Platform.isIOS)
                SettingsSection(
                  title: Text('security'.tr()),
                  tiles: <SettingsTile>[
                    SettingsTile.switchTile(
                      onToggle: (value) {
                        var cubit = SettingCubit.get(context);
                        cubit.enableFingerPrint();
                      },
                      initialValue: state.isFingerPrint,
                      leading: const Icon(Icons.fingerprint),
                      title: Text(
                          state.availableBiometrics.contains(BiometricType.face)
                              ? "Use FaceID"
                              : "fingerPrint".tr()),
                    ),
                  ],
                ),
              SettingsSection(
                title: Text('service'.tr()),
                tiles: <SettingsTile>[
                  SettingsTile.switchTile(
                    onToggle: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    initialValue: !isSwitched,
                    leading: const Icon(Icons.notifications),
                    title: Text('enableNotification'.tr()),
                  ),
                  SettingsTile.switchTile(
                    onToggle: (value) {
                      if (stateLocale.theme == 'light') {
                        cubit.changeTheme(AllTypes.dark);
                      } else {
                        cubit.changeTheme(AllTypes.light);
                      }
                    },
                    initialValue: stateLocale.theme == 'light' ? false : true,
                    leading: const Icon(Icons.dark_mode),
                    title: Text('darkMode'.tr()),
                  ),
                  SettingsTile.switchTile(
                    onToggle: (value) {
                      print(context.locale.countryCode.toString());
                      if (context.locale.languageCode.toString() == 'en') {
                        cubit.changeLang('ar');
                        context.setLocale(const Locale('ar', 'JO'));
                      } else {
                        cubit.changeLang('en');
                        context.setLocale(const Locale('en', 'US'));
                      }
                    },
                    initialValue: stateLocale.theme == 'light' ? false : true,
                    leading: const Icon(Icons.dark_mode),
                    title: Text('darkMode'.tr()),
                  ),
                ],
              ),
              SettingsSection(
                title: const Text(''),
                tiles: <SettingsTile>[
                  SettingsTile(
                    onPressed: (context) {},
                    leading: const Icon(Icons.exit_to_app),
                    title: Text('logout'.tr()),
                  ),
                ],
              ),
            ],
          ),
        );
      });
    });
  }
}

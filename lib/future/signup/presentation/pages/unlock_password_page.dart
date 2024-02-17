import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/login/presentation/cubit/login_state.dart';

class UnlockPasswordPage extends StatefulWidget {
  const UnlockPasswordPage({super.key, required this.recoveryEmail});

  final String recoveryEmail;

  @override
  State<UnlockPasswordPage> createState() => _UnlockPasswordPageState();
}

class _UnlockPasswordPageState extends State<UnlockPasswordPage> {
  late final TextEditingController password;
  late final TextEditingController confirmPassword;

  @override
  void initState() {
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.forGetPasswordStatus == ForGetPasswordStatus.changedPassword) {
            context.goNamed(Routes.login);
          }
        },
        child: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: context.height * 0.1,
                ),
                Center(
                  child: TranslateText(
                    styleText: StyleText.h4,
                    text: 'resetPassword',
                    colorText: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TranslateText(
                          styleText: StyleText.h5,
                          text: 'hintResetPassword',
                          maxLines: 2,
                          colorText: Theme.of(context).colorScheme.primary,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CircleAvatar(
                      radius: 80,
                      backgroundColor: HexColor('4C0497').withOpacity(0.1),
                      child: Image.asset('unlock_password'.toPng, width: 100, height: 100)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TranslateText(
                        styleText: StyleText.h5,
                        text: 'password',
                        colorText: HexColor('200E32'),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFiledApp(
                          textEditingController: password,
                          prefixIcon: 'password',
                          hintText: 'hintPassword'.tr(),
                          obscureText: state.toggleUnlockPassword,
                          suffixIcon: IconButton(
                            onPressed: () {
                              context.read<LoginCubit>().updateToggleUnlockPassword();
                            },
                            icon: Icon(
                              state.toggleUnlockPassword ? Icons.visibility : Icons.visibility_off,
                              color: HexColor('#707070'),
                            ),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      TranslateText(
                        styleText: StyleText.h5,
                        text: 'confirmPassword',
                        colorText: HexColor('200E32'),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormFiledApp(
                          textEditingController: confirmPassword,
                          prefixIcon: 'password',
                          hintText: 'hintConfirmPassword'.tr(),
                          obscureText: state.toggleUnlockPassword,
                          suffixIcon: IconButton(
                            onPressed: () {
                              context.read<LoginCubit>().updateToggleUnlockPassword();
                            },
                            icon: Icon(
                              state.toggleUnlockPassword ? Icons.visibility : Icons.visibility_off,
                              color: HexColor('#707070'),
                            ),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                          width: context.width,
                          child: CustomButtonWidget(
                            color: Colors.white,
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            text: 'resetPassword'.tr(),
                            onPressed: () {
                              LoginCubit.get(context).changePasswordUser(
                                password: password.text,
                                phone: widget.recoveryEmail,
                              );

                              // LoginCubit.get(context).loginUser();
                            },
                          )),
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

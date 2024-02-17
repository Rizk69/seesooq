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

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key, required this.recoveryEmail});

  final String recoveryEmail;

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  late final TextEditingController recoveryEmail;

  @override
  void initState() {
    recoveryEmail = TextEditingController(text: widget.recoveryEmail);
    super.initState();
  }

  @override
  void dispose() {
    recoveryEmail.dispose();
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
          if (state.forGetPasswordStatus == ForGetPasswordStatus.otpMode) {
            context.goNamed(Routes.confirmCode, extra: recoveryEmail.text);
          }
        },
        child: SingleChildScrollView(
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
                  text: 'forgetYourPassword',
                  colorText: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: TranslateText(
                  styleText: StyleText.h5,
                  text: 'hintForgetPassword',
                  colorText: Theme.of(context).colorScheme.primary,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                    radius: 80,
                    backgroundColor: HexColor('4C0497').withOpacity(0.1),
                    child: Image.asset('forget_password'.toPng, width: 100, height: 100)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TranslateText(
                      styleText: StyleText.h5,
                      text: 'email',
                      colorText: HexColor('200E32'),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormFiledApp(textEditingController: recoveryEmail, prefixIcon: 'email', hintText: 'email'),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                        width: context.width,
                        child: CustomButtonWidget(
                          color: Colors.white,
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          text: 'submitTheCode'.tr(),
                          onPressed: () {
                            context.read<LoginCubit>().forgetPassword(email: recoveryEmail.text);
                          },
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

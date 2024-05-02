import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/login/presentation/cubit/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController email = TextEditingController(text: '');
  late final TextEditingController password = TextEditingController(text: '');
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Form key

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    String pattern = r'\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b';
    if (!RegExp(pattern).hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: context.height * 0.15),
                    Hero(
                      tag: 'logo',
                      child: Center(
                        child: SvgPicture.asset(
                          'logo-app'.toSvg,
                          height: 150,
                        ),
                      ),
                    ),
                    SizedBox(height: context.height * 0.05),
                    SizedBox(
                      height: 50,
                      child: TextFormFiledApp(
                        validator: emailValidator,
                        prefixIcon: 'email',
                        keyBoardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        textEditingController: email,
                        hintText: 'emailHint'.tr(),
                      ),
                    ),
                    SizedBox(height: context.height * 0.01),
                    SizedBox(
                      height: 50,
                      child: TextFormFiledApp(
                          validator: passwordValidator,
                          prefixIcon: 'password',
                          textEditingController: password,
                          hintText: 'passwordHint'.tr(),
                          obscureText: state.togglePassword,
                          suffixIcon: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              context.read<LoginCubit>().updateTogglePassword();
                            },
                            icon: Icon(
                              state.togglePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          )),
                    ),
                    SizedBox(height: context.height * 0.004),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // SizedBox(
                        //   width: 26,
                        //   height: 26,
                        //   child: Checkbox(
                        //     value: false,
                        //     visualDensity: VisualDensity.comfortable,
                        //     fillColor: MaterialStateProperty.all(Colors.white),
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(3), side: const BorderSide(color: Colors.white, strokeAlign: 1, width: 1)),
                        //     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        //     activeColor: Colors.white,
                        //     focusColor: Colors.white,
                        //     hoverColor: Colors.white,
                        //     side: BorderSide(color: HexColor('#70707080').withOpacity(0.5)),
                        //     onChanged: (value) {},
                        //   ),
                        // ),
                        // TranslateText(
                        //   styleText: StyleText.h6,
                        //   text: 'rememberMe'.tr(),
                        //   colorText: Colors.black,
                        //   fontWeight: FontWeight.normal,
                        //   fontSize: 14,
                        // ),
                        // const Spacer(),
                        InkWell(
                          onTap: () => context.goNamed(
                              Routes.forgetPasswordPRoute,
                              extra: email.text),
                          child: TranslateText(
                            styleText: StyleText.h6,
                            text: 'forgetPassword'.tr(),
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: context.height * 0.01),
                    SizedBox(
                      width: context.width,
                      child: CustomButtonWidget(
                        color: Colors.white,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        text: 'login'.tr(),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context
                                .read<LoginCubit>()
                                .loginUserWithEmailOrPhone(
                                    email: email.text, password: password.text);
                          }
                        },
                      ),
                    ),
                    SizedBox(height: context.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // SizedBox(
                        //   width: 26,
                        //   height: 26,
                        //   child: Checkbox(
                        //     value: false,
                        //     visualDensity: VisualDensity.comfortable,
                        //     fillColor: MaterialStateProperty.all(Colors.white),
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(3), side: const BorderSide(color: Colors.white, strokeAlign: 1, width: 1)),
                        //     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        //     activeColor: Colors.white,
                        //     focusColor: Colors.white,
                        //     hoverColor: Colors.white,
                        //     side: BorderSide(color: HexColor('#70707080').withOpacity(0.5)),
                        //     onChanged: (value) {},
                        //   ),
                        // ),
                        // TranslateText(
                        //   styleText: StyleText.h6,
                        //   text: 'rememberMe'.tr(),
                        //   colorText: Colors.black,
                        //   fontWeight: FontWeight.normal,
                        //   fontSize: 14,
                        // ),
                        // const Spacer(),
                        InkWell(
                          onTap: () {
                            context.read<LoginCubit>().loginAsGuest();
                          },
                          splashColor: Theme.of(context).colorScheme.secondary,
                          child: Semantics(
                            label: 'Continue as Guest',
                            button: true,
                            child: TranslateText(
                              styleText: StyleText.h6,
                              text: 'Continue as a Guest'.tr(),
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        )

                      ],
                    ),
                    // const SignUpWithSocialMediaWidget(text: 'Or log in with'),
                    // SizedBox(height: context.height * 0.02),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     TranslateText(
                    //       styleText: StyleText.h6,
                    //       text: 'newUser'.tr(),
                    //       colorText: Colors.grey,
                    //       fontWeight: FontWeight.normal,
                    //       fontSize: 14,
                    //     ),
                    //     InkWell(
                    //       onTap: () => context.goNamed(Routes.signUp),
                    //       child: TranslateText(
                    //         styleText: StyleText.h6,
                    //         text: 'signUp'.tr(),
                    //         colorText: Theme.of(context).colorScheme.primary,
                    //         fontWeight: FontWeight.normal,
                    //         textDecoration: TextDecoration.underline,
                    //         fontSize: 14,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ]),
            ),
          ),
        ),
      );
    });
  }
}

import 'dart:io';
import 'package:country_flags/country_flags.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/signup/data/repositories/params/signup_params.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_state.dart';
import 'package:opensooq/future/signup/presentation/widgets/privacy_and_terms_widget.dart';
import 'package:opensooq/future/signup/presentation/widgets/sign_up_with_social_media_widget.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key, required this.socialData});

  final Object? socialData;

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController fullName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController userName = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
    fullName.dispose();
    phoneNumber.dispose();
    userName.dispose();

    super.dispose();
  }

  @override
  initState() {
    super.initState();
    if (widget.socialData != null) {
      email.text = (widget.socialData as Map<String, dynamic>)['email'];
      fullName.text = (widget.socialData as Map<String, dynamic>)['name'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(listener: (context, state) {
      var cubit = SignUpCubit.get(context);
      if (state.signUpStatus == SignUpStatus.otp) {
        context.goNamed(Routes.confirmCodeSignUp);
      }
    }, builder: (context, state) {
      var cubit = SignUpCubit.get(context);
      return SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: context.height * 0.1),
          Hero(
              tag: 'logo',
              child:
                  SvgPicture.asset('logo-app'.toSvg, width: 300, height: 150)),
          // TranslateText(
          //   styleText: StyleText.h4,
          //   text: 'createAnAccount'.tr(),
          //   fontSize: 18,
          //   colorText: AppColors.primaryColorText,
          // ),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  SizedBox(height: context.height * 0.03),
                  SizedBox(
                    height: 50,
                    child: TextFormFiledApp(
                      textEditingController: fullName,
                      hintText: 'fullName'.tr(),
                      prefixIcon: 'full_name',
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'fullName'.tr();
                        }
                      },
                    ),
                  ),
                  SizedBox(height: context.height * 0.03),
                  SizedBox(
                    height: 50,
                    child: TextFormFiledApp(
                      textEditingController: email,
                      prefixIcon: 'email',
                      hintText: 'enter_email'.tr(),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'enter_email'.tr();
                        }
                      },
                    ),
                  ),
                  SizedBox(height: context.height * 0.03),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showCountryPicker(
                            context: context,
                            showPhoneCode: true,
                            useSafeArea: true,
                            countryListTheme: CountryListThemeData(
                                flagSize: 25,
                                borderRadius: BorderRadius.circular(20),
                                backgroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 16),
                                bottomSheetHeight: context.height * 0.7),
                            favorite: [
                              '+962',
                              'JO',
                              "+966",
                              "SA",
                              "+20",
                              "EG",
                              "+963",
                              "SY",
                            ],
                            onSelect: (Country country) {
                              cubit.updateCountry(
                                countryCode: country.phoneCode,
                                countryFlag: country.countryCode,
                              );
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          height: 50,
                          decoration: BoxDecoration(
                            color: HexColor('#F5F5F5'),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // show flag here
                              CountryFlag.fromCountryCode(
                                state.countryFlag,
                                width: 30,
                                height: 30,
                                borderRadius: 10,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                state.countryCode,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: context.width * 0.02),
                      Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 50,
                          child: TextFormFiledApp(
                              textEditingController: phoneNumber,
                              prefixIcon: 'phone',
                              hintText: 'phoneHint'.tr(),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'phoneHint'.tr();
                                }
                              }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: context.height * 0.03),
                  SizedBox(
                    height: 50,
                    child: TextFormFiledApp(
                        textEditingController: password,
                        prefixIcon: 'password',
                        hintText: 'passwordHint'.tr(),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'passwordHint'.tr();
                          }
                        }),
                  ),
                  SizedBox(height: context.height * 0.03),
                  SizedBox(
                    height: 50,
                    child: TextFormFiledApp(
                        textEditingController: confirmPassword,
                        prefixIcon: 'password',
                        hintText: 'confirmPasswordHint'.tr(),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'confirmPasswordHint'.tr();
                          }
                        }),
                  ),
                  SizedBox(height: context.height * 0.012),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 26,
                              height: 26,
                              child: Checkbox(
                                value: state.confirmPrivacyAndTerms,
                                visualDensity: VisualDensity.comfortable,
                                fillColor: state.confirmPrivacyAndTerms
                                    ? MaterialStateProperty.all(
                                        AppColors.primary)
                                    : MaterialStateProperty.all(
                                        Colors.transparent),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                    side: const BorderSide(
                                        color: Colors.white,
                                        strokeAlign: 1,
                                        width: 1)),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                activeColor: AppColors.primary,
                                focusColor: Colors.white,
                                hoverColor: Colors.white,
                                side: BorderSide(
                                    color:
                                        HexColor('#70707080').withOpacity(0.5)),
                                onChanged: (value) {
                                  cubit.confirmTermAndCondition(value!);
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const PrivacyAndTermsWidget()
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: context.height * 0.04),
                  SizedBox(
                    width: context.width,
                    child: CustomButtonWidget(
                      color: Colors.white,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      text: 'signUp'.tr(),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (!state.confirmPrivacyAndTerms) {
                            EasyLoading.showError('confirmTerms'.tr());
                          } else {
                            cubit.signUpWithEmailAndPhone(
                              params: SignUpParams(
                                email: email.text,
                                password: password.text,
                                confirmPassword: confirmPassword.text,
                                phone: phoneNumber.text,
                                fullName: fullName.text,
                              ),
                            );
                          }
                        }
                        // LoginCubit.get(context).loginUser();
                      },
                    ),
                  ),
                  SizedBox(height: context.height * 0.02),
                  SignUpWithSocialMediaWidget(
                    text: 'textSingUp'.tr(),
                    isAndroid: Platform.isAndroid,
                    isIos: Platform.isIOS,
                  ),
                  SizedBox(height: context.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TranslateText(
                        styleText: StyleText.h6,
                        text: 'alreadyUser'.tr(),
                        colorText: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                      InkWell(
                        onTap: () => context.goNamed(Routes.login),
                        child: TranslateText(
                          styleText: StyleText.h6,
                          text: 'signIn'.tr(),
                          colorText: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.normal,
                          textDecoration: TextDecoration.underline,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      );
    });
  }
}

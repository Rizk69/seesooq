import 'package:country_flags/country_flags.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/custom_button_widget.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/widget/text_translate_manager.dart';

import '../cubit/connectWithUs_cubit/connect_with_us_cubit.dart';
import '../cubit/connectWithUs_cubit/connect_with_us_state.dart';
import '../edit_profile/presentation/widgets/Customs.dart';
import '../edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import '../edit_profile/presentation/widgets/header_screen.dart';

class ConnectWithUsPage extends StatelessWidget {
  const ConnectWithUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConnectWithUsCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: BlocBuilder<ConnectWithUsCubit, ConnectWithUsState>(
            builder: (context, state) {
              var cubit = ConnectWithUsCubit.get(context);

              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderScreens(
                        title: 'contact_us',
                        onPressed: () {
                          context.go(Routes.setting);
                        }),
                    const SizedBox(height: 40),
                    titleText('full_name'),
                    const SizedBox(height: 10),
                    TextFormFiledCustom(
                      hintText: 'enter_your_full_name'.tr(),
                      imgIconSvg: "assets/images/svg/person.svg",
                      lines: 1,
                    ),
                    const SizedBox(height: 24),
                    titleText('enter_email'),
                    const SizedBox(height: 10),
                    TextFormFiledCustom(
                      hintText: 'enter_email',
                      imgIconSvg: "assets/images/svg/email.svg",
                      lines: 1,
                    ),
                    const SizedBox(height: 24),
                    titleText('mobile_number'),
                    const SizedBox(height: 10),
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
                                bottomSheetHeight:
                                    MediaQuery.of(context).size.height * 0.7,
                              ),
                              favorite: [
                                '+962',
                                'JO',
                                '+966',
                                'SA',
                                '+20',
                                'EG',
                                '+963',
                                'SY',
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
                        const SizedBox(width: 15),
                        Expanded(
                          child: TextFormFiledCustom(
                            hintText: 'mobile_number',
                            imgIconSvg: "assets/images/svg/phone.svg",
                            lines: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    titleText('message'),
                    const SizedBox(height: 10),
                    TextFormFiledCustom(
                      hintText: 'enter_message'.tr(),
                      imgIconSvg: "assets/images/svg/message.svg",
                      lines: 5,
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: CustomButtonWidget(
                          color: Colors.white,
                          text: 'send'.tr(),
                          onPressed: () {
                            context.goNamed(Routes.sucssesConnectWithUsPage);
                          },
                        ))
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget titleText(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TranslateText(
        styleText: StyleText.h4,
        colorText: HexColor('#200E32'),
        fontWeight: FontWeight.w500,
        text: title,
      ),
    );
  }
}

class SucssesConnectWithUsPage extends StatelessWidget {
  const SucssesConnectWithUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          'assets/images/svg/header_auth_page.svg',
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4.3,
        ),
        Center(child: AnimatedCheck(img: "assets/images/Group 448.png")),
        const SizedBox(
          height: 34,
        ),
        Center(
            child: titleText(
                'تم الإرسال بنجاح', HexColor('#4C0497'), StyleText.h4)),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: titleText('تم إرسال رسالتك بنجاح، سيتوصل معك',
                HexColor('#707070'), StyleText.h5)),
        Center(
            child: titleText(
                '...أحد ممثلونا للإجابة', HexColor('#707070'), StyleText.h5)),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButtonWidget(
                color: Colors.white,
                text: 'متابعة إلى الصفحة الرئيسية',
                onPressed: () {
                  context.go(Routes.home);
                },
              )),
        )
      ],
    );
  }

  Widget titleText(String title, Color color, StyleText styleText) {
    return TranslateText(
      styleText: styleText,
      colorText: color,
      fontWeight: FontWeight.w500,
      text: title,
    );
  }
}

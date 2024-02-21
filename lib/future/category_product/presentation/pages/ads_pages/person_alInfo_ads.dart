import 'package:country_flags/country_flags.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../config/routes/app_routes.dart';
import '../../../../../core/utils/custom_button_widget.dart';
import '../../../../../core/utils/hex_color.dart';
import '../../../../../core/widget/text_translate_manager.dart';
import '../../../../setting1/edit_profile/presentation/widgets/Customs.dart';
import '../../cubit/personal_info_ads_cubit.dart';
import '../../cubit/personal_info_ads_state.dart';

class PersonalInfoAds extends StatelessWidget {
  const PersonalInfoAds({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonalInfoAdsCubit(),
      child:  SingleChildScrollView(
          child: BlocBuilder<PersonalInfoAdsCubit, PersonalInfoAdsState>(
            builder: (context, state) {
              var cubit = PersonalInfoAdsCubit.get(context);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 10),
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

                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CustomButtonWidget(
                        color: Colors.white,
                        text: 'next'.tr(),
                        onPressed: () {
                          context.goNamed(Routes.sucssesConnectWithUsPage);
                        },
                      ))
                ],
              );
            },
          ),
        )

    );}

  Widget titleText(String title) {
    return TranslateText(
      styleText: StyleText.h4,
      colorText: HexColor('#200E32'),
      fontWeight: FontWeight.w500,
      text: title,
    );
  }
}
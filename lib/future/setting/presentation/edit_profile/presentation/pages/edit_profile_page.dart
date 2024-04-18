import 'package:country_flags/country_flags.dart';
import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

import '../../cubit/edit_profile_cubit.dart';
import '../../cubit/edit_profile_state.dart';
import '../widgets/Customs.dart';
import '../widgets/header_screen.dart';
import '../widgets/profile_photo.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = EditProfileCubit.get(context);

    return BlocConsumer<EditProfileCubit, EditProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderScreens(
                      title: 'edit_profile',
                      onPressed: () {
                        context.go(Routes.profilePage);
                      }),
                  const SizedBox(height: 40),
                  Center(child: ProfilePhoto(img: 'edit_profile'.toSvg)),
                  const SizedBox(height: 20),
                  titleText('first_name'),
                  const SizedBox(height: 10),
                  TextFormFiledCustom(
                    controller: TextEditingController(text: ''),
                    hintText: 'mohamed..',
                    imgIconSvg: "assets/images/svg/person.svg",
                    lines: 1,
                  ),
                  const SizedBox(height: 24),
                  titleText('enter_email'),
                  const SizedBox(height: 10),
                  TextFormFiledCustom(
                    controller: TextEditingController(text: ''),
                    hintText: 'maymohamedatef@gmail.com',
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
                              bottomSheetHeight: MediaQuery.of(context).size.height * 0.7,
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
                          controller: TextEditingController(text: ''),
                          imgIconSvg: "assets/images/svg/phone.svg",
                          lines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  titleText('gender'),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Text('male'.tr()),
                          leading: Radio(
                            value: Gender.male,
                            groupValue: state.gender,
                            onChanged: (Gender? value) {
                              if (value != null) {
                                context.read<EditProfileCubit>().selectGender(value);
                              }
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          focusColor: Colors.grey,
                          title: Text('female'.tr()),
                          leading: Radio(
                            value: Gender.female,
                            groupValue: state.gender,
                            onChanged: (Gender? value) {
                              if (value != null) {
                                context.read<EditProfileCubit>().selectGender(value);
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CustomButtonWidget(
                        color: Colors.white,
                        text: 'save_changes'.tr(),
                        onPressed: () {
                          context.go(Routes.sucsseEditProfile);
                        },
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget titleText(String title) {
    return TranslateText(
      styleText: StyleText.h4,
      colorText: HexColor('#200E32'),
      fontWeight: FontWeight.w500,
      text: title,
    );
  }
}

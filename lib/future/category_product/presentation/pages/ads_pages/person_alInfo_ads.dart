import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';

import '../../../../../core/utils/custom_button_widget.dart';
import '../../../../../core/utils/hex_color.dart';
import '../../../../../core/widget/text_translate_manager.dart';
import '../../../../setting1/edit_profile/presentation/widgets/Customs.dart';

class PersonalInfoAds extends StatefulWidget {
  const PersonalInfoAds({super.key});

  @override
  State<PersonalInfoAds> createState() => _PersonalInfoAdsState();
}

class _PersonalInfoAdsState extends State<PersonalInfoAds> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdsCubit, AddAdsState>(builder: (context, state) {
      var cubit = AddAdsCubit.get(context);
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            titleText('full_name'),
            const SizedBox(height: 10),
            TextFormFiledCustom(
              hintText: 'enter_your_full_name'.tr(),
              imgIconSvg: "person".toSvg,
              controller: cubit.nameController,
              enabled: false,
              lines: 1,
            ),
            const SizedBox(height: 24),
            titleText('enter_email'),
            const SizedBox(height: 10),
            TextFormFiledCustom(
              hintText: 'enter_email',
              controller: cubit.emailController,
              enabled: false,
              imgIconSvg: "email.svg".toSvg,
              lines: 1,
            ),
            const SizedBox(height: 24),
            titleText('mobile_number'),
            const SizedBox(height: 10),
            Row(
              children: [
                // InkWell(
                //   onTap: () {
                //     showCountryPicker(
                //       context: context,
                //       showPhoneCode: true,
                //       useSafeArea: true,
                //       countryListTheme: CountryListThemeData(
                //         flagSize: 25,
                //         borderRadius: BorderRadius.circular(20),
                //         backgroundColor: Colors.white,
                //         textStyle: const TextStyle(fontSize: 16),
                //         bottomSheetHeight: MediaQuery.of(context).size.height * 0.7,
                //       ),
                //       favorite: [
                //         '+962',
                //         'JO',
                //         '+966',
                //         'SA',
                //         '+20',
                //         'EG',
                //         '+963',
                //         'SY',
                //       ],
                //       onSelect: (Country country) {
                //         cubit.updateCountry(
                //           countryCode: country.phoneCode,
                //           countryFlag: country.countryCode,
                //         );
                //       },
                //     );
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(horizontal: 8),
                //     height: 50,
                //     decoration: BoxDecoration(
                //       color: HexColor('#F5F5F5'),
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         CountryFlag.fromCountryCode(
                //           state.countryFlag,
                //           width: 30,
                //           height: 30,
                //           borderRadius: 10,
                //         ),
                //         const SizedBox(width: 8),
                //         Text(
                //           state.countryCode,
                //           style: const TextStyle(fontSize: 16),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const SizedBox(width: 15),
                Expanded(
                  child: TextFormFiledCustom(
                    controller: cubit.phoneController,
                    hintText: 'mobile_number',
                    enabled: false,
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
                    context.goNamed('view_ads');
                  },
                ))
          ],
        ),
      );
    });
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

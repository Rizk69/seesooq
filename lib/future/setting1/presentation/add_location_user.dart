import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/setting1/widget/dropdown_location.dart';

import '../../../core/utils/custom_button_widget.dart';
import '../cubit/location_cubit/location_selection_cubit.dart';
import '../edit_profile/presentation/widgets/Customs.dart';
import '../edit_profile/presentation/widgets/anmtionsucssuffly.dart';
import '../edit_profile/presentation/widgets/header_screen.dart';

class EmptyLocationPage extends StatelessWidget {
  const EmptyLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: [
          HeaderScreens(
              title: 'العنوان',
              onPressed: () {
                context.go(Routes.accountMangePage);
              }),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4.3,
          ),
          const Center(child: AnimatedCheck(img: "assets/images/location.png")),
          const SizedBox(
            height: 34,
          ),
          Center(
              child: titleText(
                  'لا يوجد عنوان', HexColor('#4C0497'), StyleText.h4)),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: titleText('يبدو أنك لم تقم بإضافة أي عنوان بعد،',
                  HexColor('#707070'), StyleText.h5)),
          Center(
              child: titleText(
                  '...سيظهر عنوانك هنا', HexColor('#707070'), StyleText.h5)),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              context.go(Routes.addLocationUser);
            },
            child: Container(
              width: 200,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 34),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF4C0497), width: 1),
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF4C0497),
                      Color(0xFF4C0497),
                      Color(0xFF4C0497),
                      Colors.white,
                      Colors.white,
                    ],
                    stops: [
                      0.7,
                      0.7,
                      0,
                      1,
                      1,
                    ],
                  )),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 15),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'إضافة عنواني',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
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

class AddLocationUser extends StatelessWidget {
  const AddLocationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationSelectionCubit(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            HeaderScreens(
                title: 'إضافة عنواني',
                onPressed: () {
                  context.go(Routes.accountMangePage);
                }),
            const SizedBox(
              height: 37,
            ),
            SingleChildScrollView(
              child: Expanded(
                  child: Column(
                children: [
                  titleText('العنوان', Colors.black, StyleText.h3),
                  const SizedBox(height: 10),
                  const CustomTextFormFiledApp(
                      imgIconSvg: 'assets/images/svg/location.svg',
                      title: 'أدخل عنوانك'),
                  const SizedBox(height: 10),
                  LocationSelectionWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      context.go(Routes.sucssesAddLocationPage);
                    },
                    child: ButtomsCustom(title: 'إضافة عنواني'),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  Widget titleText(String title, Color color, StyleText styleText) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TranslateText(
        styleText: styleText,
        colorText: color,
        fontWeight: FontWeight.w500,
        text: title,
      ),
    );
  }
}

class SucssesAddLocationPage extends StatelessWidget {
  const SucssesAddLocationPage({super.key});

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
                'تمت إضافة عنوانك بنجاح', HexColor('#4C0497'), StyleText.h4)),
        const SizedBox(
          height: 10,
        ),
        Center(
            child: titleText('قمت بإضافة العنوان الخاص بك بنجاح،',
                HexColor('#707070'), StyleText.h5)),
        Center(
            child: titleText(
                '...يمكنك متابعة التصفح', HexColor('#707070'), StyleText.h5)),
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

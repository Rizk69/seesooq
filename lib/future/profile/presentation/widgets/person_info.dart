import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/custom_divider.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/login/presentation/cubit/login_state.dart';

class InformationWidget extends StatefulWidget {
  const InformationWidget({super.key, required this.controller});
  final TabController controller;

  @override
  State<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(FirebaseAuth.instance.currentUser?.photoURL ?? ''),
                          radius: 50,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TranslateText(
                            text: 'IdUser'.tr(args: ['123456789']),
                            styleText: StyleText.h4,
                            colorText: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          const CustomDivider(),
                          const SizedBox(
                            height: 10,
                          ),
                          TranslateText(
                            text: 'name'.tr(),
                            styleText: StyleText.h5,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormFiledApp(
                              textEditingController: nameController,
                              textInputAction: TextInputAction.next,
                              keyBoardType: TextInputType.name,
                              hintText: user?.displayName ?? ""),
                          const SizedBox(
                            height: 10,
                          ),
                          TranslateText(
                            text: 'dob'.tr(),
                            styleText: StyleText.h5,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormFiledApp(
                              textEditingController: dobController,
                              textInputAction: TextInputAction.next,
                              keyBoardType: TextInputType.datetime,
                              hintText: user?.email ?? ""),
                          const SizedBox(
                            height: 10,
                          ),
                          TranslateText(
                            text: 'gender'.tr(),
                            styleText: StyleText.h5,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormFiledApp(
                              textEditingController: genderController,
                              textInputAction: TextInputAction.next,
                              keyBoardType: TextInputType.number,
                              hintText: user?.emailVerified.toString() ?? ""),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormFiledApp(
                  textEditingController: aboutMeController,
                  textInputAction: TextInputAction.done,
                  keyBoardType: TextInputType.text,
                  maxLine: 5,
                  hintText: 'aboutMe'.tr(),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: context.width / 1.2,
                  height: 50,
                  child: CustomButtonWidget(
                    backgroundColor: AppColors.myShop,
                    text: 'myShop',
                    onPressed: () {
                      widget.controller.animateTo(5);
                    },
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: context.width / 1.2,
                  height: 50,
                  child: CustomButtonWidget(
                    backgroundColor: Colors.white,
                    text: 'logout',
                    onPressed: () {
                      context.read<LoginCubit>().logoutUser();
                    },
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ));
    });
  }
}

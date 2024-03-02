import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_state.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmCodePage extends StatefulWidget {
  const ConfirmCodePage({super.key, required this.recoveryEmail});

  final String recoveryEmail;

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(listener: (context, state) {
      if (state.signUpStatus == SignUpStatus.doneOtp) {
        LoginCubit.get(context).getLocalUser();
      }
    }, builder: (context, state) {
      var cubit = SignUpCubit.get(context);
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: context.height * 0.1,
              ),
              TranslateText(
                styleText: StyleText.h4,
                text: 'ConfirmCode',
                maxLines: 2,
                colorText: Theme.of(context).colorScheme.primary,
              ),
              TranslateText(
                styleText: StyleText.h6,
                text: state.signUpModel?.data?.otp.toString() ?? '',
                maxLines: 2,
                colorText: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TranslateText(
                        styleText: StyleText.h5,
                        text: 'hintConfirmCode'.tr(args: [(widget.recoveryEmail)]),
                        colorText: Theme.of(context).colorScheme.primary,
                        textAlign: TextAlign.center,
                        maxLines: 2,
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
                    radius: 80, backgroundColor: HexColor('4C0497').withOpacity(0.1), child: Image.asset('pin_code'.toPng, width: 100, height: 100)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Colors.white,
                      length: 6,
                      obscureText: false,
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Please Enter The Code";
                        } else {
                          return null;
                        }
                      },
                      autoFocus: true,
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: HexColor('#F5F5F5').withOpacity(1),
                          disabledBorderWidth: 2,
                          inactiveColor: Colors.black38,
                          inactiveFillColor: HexColor('#F5F5F5').withOpacity(0.6),
                          activeColor: HexColor('#F5F5F5').withOpacity(0.6),
                          selectedColor: Colors.black,
                          selectedFillColor: HexColor('#F5F5F5').withOpacity(0.6),
                          disabledColor: Colors.grey),
                      onChanged: (value) {
                        setState(() {
                          cubit.updatePinCode(value);
                          // create list with for number
                        });
                      },
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      errorAnimationController: cubit.errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,
                      onCompleted: (v) {
                        cubit.checkCodeVerify();
                      },
                    ),
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
                            cubit.checkCodeVerify();
                          },
                        )),
                  ],
                ),
              ),
              // create for loop with four number and add to list
            ],
          ),
        ),
      );
    });
  }
}

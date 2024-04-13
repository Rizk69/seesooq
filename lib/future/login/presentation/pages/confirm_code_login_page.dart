import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/login/presentation/cubit/login_state.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class ConfirmCodeLoginPage extends StatefulWidget {
  const ConfirmCodeLoginPage({super.key, required this.recoveryEmail});

  final String recoveryEmail;

  @override
  State<ConfirmCodeLoginPage> createState() => _ConfirmCodeLoginPageState();
}

class _ConfirmCodeLoginPageState extends State<ConfirmCodeLoginPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();
  // create countDownTimer with 60 second
  @override
  dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  CountdownController controller = CountdownController(autoStart: true);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
      if (state.forGetPasswordStatus == ForGetPasswordStatus.otpSuccess) {
        context.goNamed(Routes.unLockPassword, extra: widget.recoveryEmail);
      }
    }, builder: (context, state) {
      var cubit = LoginCubit.get(context);
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Countdown(
                    controller: controller,
                    seconds: 30,
                    build: (BuildContext context, double time) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: InkWell(
                        onTap: time.toInt() != 0
                            ? null
                            : () {
                                controller.restart();
                                cubit.forgetPassword(email: widget.recoveryEmail);
                              },
                        child: TranslateText(
                          styleText: StyleText.h6,
                          text: 'hintResendCode'.tr(args: [time.toInt().toString()]),
                          maxLines: 2,
                          colorText: time.toInt() == 0 ? Theme.of(context).colorScheme.primary : Colors.grey,
                        ),
                      ),
                    ),
                    interval: const Duration(milliseconds: 100),
                    onFinished: () {
                      print('Timer is done!');
                    },
                  )),
              SizedBox(
                height: context.height * 0.1,
              ),
              TranslateText(
                styleText: StyleText.h4,
                text: 'ConfirmCode',
                maxLines: 2,
                colorText: Theme.of(context).colorScheme.primary,
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
                      hapticFeedbackTypes: HapticFeedbackTypes.selection,
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
                          cubit.updateOtpCode(otpCode: value);
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
                      height: 8,
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

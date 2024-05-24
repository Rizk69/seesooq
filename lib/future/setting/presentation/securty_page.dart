import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/setting/presentation/cubit/security_cubit/security_cubit.dart';
import 'package:opensooq/future/setting/presentation/cubit/security_cubit/security_state.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/utils/svg_custom_image.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SecurityCubit(),
      child: SafeArea(
        child: Scaffold(
            body: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(children: [
                  HeaderScreens(
                      title: 'privacy',
                      onPressed: () {
                        context.pop();
                      }),
                  const SizedBox(
                    height: 37,
                  ),
                  Row(
                    children: [
                      BlocBuilder<SecurityCubit, SecurityState>(
                        builder: (context, state) {
                          return Switch(
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: state is ToggleOnState,
                            onChanged: (value) {
                              context.read<SecurityCubit>().toggle();
                            },
                          );
                        },
                      ),
                      const Spacer(),
                      contactText(
                        title: 'privacy'.tr(),
                        des: 'privacy_phone'.tr(),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: HexColor('#F9F9F9'),
                        radius: 25,
                        child: const SvgCustomImage(
                          image: 'assets/images/svg/security.svg',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  )
                ]))),
      ),
    );
  }

  Widget contactText({
    required String title,
    required String des,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        Text(
          des,
          style: TextStyle(fontSize: 15, color: HexColor('707070'), fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}

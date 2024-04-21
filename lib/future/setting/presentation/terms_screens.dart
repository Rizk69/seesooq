import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';
import 'package:opensooq/future/setting/presentation/cubit/privacy_policy_cubit/privacy_policy_cubit.dart';
import 'package:opensooq/future/setting/presentation/cubit/privacy_policy_cubit/privacy_policy_state.dart';
import 'package:opensooq/future/setting/presentation/cubit/terms_of_use_cubit/terms_of_use_cubit.dart';
import 'package:opensooq/future/setting/presentation/cubit/terms_of_use_cubit/terms_of_use_state.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../config/routes/app_routes.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderScreens(
                title: 'privacy_policy',
                onPressed: () {
                  context.go(Routes.setting);
                },
              ),
              const SizedBox(height: 25),
              BlocProvider(
                create: (context) => PrivacyPolicyCubit()..getPrivacyPolicy(),
                child: BlocBuilder<PrivacyPolicyCubit, PrivacyPolicyState>(builder: (context, state) {
                  if (state.privacyPolicyStatus == PrivacyPolicyStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.privacyPolicyStatus == PrivacyPolicyStatus.error) {
                    return const Center(child: Text('Error'));
                  }
                  if (state.privacyPolicyStatus == PrivacyPolicyStatus.loaded && state.privacyPolicyModel != null) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        DataOfSetting items = state.privacyPolicyModel!.data!.data![index];
                        return _customPolicy(title: items.title ?? '', description: items.description ?? '');
                      },
                      itemCount: state.privacyPolicyModel!.data!.data!.length,
                    );
                  }
                  return const SizedBox();
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _customPolicy({
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 4),
        Text(
          description,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 16,
            color: HexColor('707070'),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderScreens(
                title: 'terms_and_conditions',
                onPressed: () {
                  context.go(Routes.setting);
                },
              ),
              const SizedBox(height: 25),
              BlocProvider(
                create: (context) => TermsOfUseCubit()..getTermsOfUse(),
                child: BlocBuilder<TermsOfUseCubit, TermsOfUseState>(builder: (context, state) {
                  if (state.termsOfUseStatus == TermsOfUseStatus.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.termsOfUseStatus == TermsOfUseStatus.error) {
                    return const Center(child: Text('Error'));
                  }
                  if (state.termsOfUseStatus == TermsOfUseStatus.loaded && state.termsOfUse != null) {
                    return Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          DataOfSetting items = state.termsOfUse!.data!.data![index];
                          return _customPolicy(title: items.title ?? '', description: items.description ?? '');
                        },
                        itemCount: state.termsOfUse!.data!.data!.length,
                      ),
                    );
                  }
                  return const SizedBox();
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _customPolicy({
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TranslateText(
          text: title,
          styleText: StyleText.h4,
        ),
        const SizedBox(height: 4),
        TranslateText(
          text: description,
          styleText: StyleText.h5,
          maxLines: 10,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

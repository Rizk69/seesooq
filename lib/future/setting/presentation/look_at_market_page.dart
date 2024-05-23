import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/setting/data/models/general_setting_model.dart';
import 'package:opensooq/future/setting/presentation/cubit/about_us_cubit/about_us_cubit.dart';
import 'package:opensooq/future/setting/presentation/cubit/about_us_cubit/about_us_state.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../core/utils/hex_color.dart';
import '../../../core/utils/svg_custom_image.dart';

class LookAtMarketPage extends StatelessWidget {
  const LookAtMarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                HeaderScreens(
                  title: 'market_watch',
                  onPressed: () {
                    context.pop();
                  },
                ),
                const SizedBox(height: 25),
                BlocProvider(
                  create: (context) => AboutUsCubit()..getAboutUs(),
                  child: BlocBuilder<AboutUsCubit,AboutUsState>(
                      builder: (context, state) {
                    if (state.aboutUsStatus == AboutUsStatus.loading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (state.aboutUsStatus == AboutUsStatus.error) {
                      return const Center(child: Text('Error'));
                    }
                    if (state.aboutUsStatus == AboutUsStatus.loaded &&
                        state.aboutUs != null) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          DataOfSetting items =
                              state.aboutUs!.data!.data![index];
                          return _customPolicy(
                              title: items.title ?? '',
                              description: items.description ?? '');
                        },
                        itemCount: state.aboutUs!.data!.data!.length,
                      );
                    }
                    return const SizedBox();
                  }),
                ),
                Text(
                  'contact_us'.tr(),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    _customCard(img: 'assets/images/svg/insicons.svg'),
                    _customCard(img: 'assets/images/svg/facicons.svg'),
                    _customCard(img: 'assets/images/svg/mobileicons.svg'),
                    _customCard(img: 'assets/images/svg/emailicons.svg')
                  ],
                ),
              ],
            ),
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

  Widget _customCard({required String img}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            color: HexColor('#F9F9F9'),
            borderRadius: BorderRadius.circular(20)),
        child: SvgCustomImage(
          image: img,
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}

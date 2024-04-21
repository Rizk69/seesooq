import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/banner_ads_shared_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/something_went_wrong.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/show_advertisment_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/show_advertisment_state.dart';
import 'package:opensooq/future/home/presentation/widgets/call_orchat_button_widget.dart';
import 'package:opensooq/future/home/presentation/widgets/show_attributes_widget.dart';
import 'package:opensooq/future/home/presentation/widgets/show_owner_ads_widget.dart';

class ShowAdsByHomeScreen extends StatefulWidget {
  const ShowAdsByHomeScreen({super.key, required this.id});
  final String id;

  @override
  State<ShowAdsByHomeScreen> createState() => _ShowAdsByHomeScreenState();
}

class _ShowAdsByHomeScreenState extends State<ShowAdsByHomeScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TranslateText(
          styleText: StyleText.h4,
          fontWeight: FontWeight.w700,
          text: 'Ads',
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => ShowAdvertismentCubit()..getAdvertisment(widget.id),
        child: BlocBuilder<ShowAdvertismentCubit, ShowAdvertismentState>(builder: (context, state) {
          if (state.storyStatus == ShowAdvertismentStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.storyStatus == ShowAdvertismentStatus.error) {
            return const SomThingWentWrongWidget();
          }

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(state.advertisementModel?.data???'empty',style: TextStyle(color: Colors.black)),
                  BannerAdsSharedWidget(images: [state.advertisementModel?.data?.mainImage ?? ' '], onPageChanged: (index) {}, height: 250),
                  const Gap(
                    25,
                  ),
                  TranslateText(
                    styleText: StyleText.h5,
                    fontWeight: FontWeight.w500,
                    text: state.advertisementModel?.data?.title ?? ' ',
                    colorText: HexColor("#200E32"),
                  ),
                  const Gap(
                    10,
                  ),
                  TranslateText(
                    styleText: StyleText.h5,
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w400,
                    text: state.advertisementModel?.data?.desc ?? ' ',
                    colorText: HexColor("#707070"),
                  ),
                  const Gap(
                    10,
                  ),
                  TranslateText(
                    styleText: StyleText.h3,
                    fontWeight: FontWeight.w700,
                    text: '${state.advertisementModel?.data?.price.toString().price} JD',
                    colorText: HexColor("#4C0497"),
                  ),
                  const Gap(
                    20,
                  ),
                  if (state.advertisementModel?.data?.city != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgCustomImage(image: 'location'.toSvg, width: 20, height: 20),
                        const Gap(
                          5,
                        ),
                        TranslateText(
                          styleText: StyleText.h5,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.start,
                          text: state.advertisementModel?.data?.city ?? '',
                          colorText: HexColor("#200E32"),
                        ),
                      ],
                    ),

                  CallOrChatButtonWidget(
                    state: state,
                  ),
                  const Gap(
                    20,
                  ),
                  ShowAttributesWidget(
                    state: state,
                  ),
                  const Gap(
                    20,
                  ),
                  ShowOwnerAdsWidget(state: state)
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

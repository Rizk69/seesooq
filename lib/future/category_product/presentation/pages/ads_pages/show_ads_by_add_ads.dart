import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/banner_ads_shared_widget.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';

class ShowAdsByAddingScreen extends StatefulWidget {
  const ShowAdsByAddingScreen({super.key});

  @override
  State<ShowAdsByAddingScreen> createState() => _ShowAdsByAddingScreenState();
}

class _ShowAdsByAddingScreenState extends State<ShowAdsByAddingScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddAdsCubit, AddAdsState>(listenWhen: (previous, current) {
      return current.createAdsStatus == CreateAdsStatus.success;
    }, listener: (context, state) {
      context.goNamed(Routes.reviewAdsRoute);
      AddAdsCubit.get(context).resetCreateAds();
    }, builder: (context, state) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerAdsSharedWidget(images: state.attributesForm.images, onPageChanged: (index) {}, height: 250, isMemoryImage: true),
            const Gap(
              25,
            ),
            TranslateText(
              styleText: StyleText.h5,
              fontWeight: FontWeight.w500,
              text: state.attributesForm.title,
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
              text: state.attributesForm.description,
              colorText: HexColor("#707070"),
            ),
            const Gap(
              10,
            ),
            TranslateText(
              styleText: StyleText.h3,
              fontWeight: FontWeight.w700,
              text: '${state.attributesForm.price.price}${'jd'.tr()}',
              colorText: HexColor("#4C0497"),
            ),
            const Gap(
              20,
            ),
            TranslateText(
              styleText: StyleText.h4,
              fontWeight: FontWeight.w500,
              text: 'location',
              colorText: HexColor("#200E32"),
            ),
            const Gap(
              10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgCustomImage(image: 'location'.toSvg, width: 20, height: 20),
                const Gap(
                  5,
                ),
                TranslateText(
                  styleText: StyleText.h5,
                  fontWeight: FontWeight.w400,
                  text: '${state.city} - ${state.governorate}',
                  colorText: HexColor("#200E32"),
                ),
                const Gap(
                  10,
                ),
              ],
            ),
            const Gap(
              20,
            ),
            TranslateText(
              styleText: StyleText.h4,
              fontWeight: FontWeight.w500,
              text: 'attributes',
              colorText: HexColor("#200E32"),
            ),
            const Gap(
              10,
            ),
            Wrap(
              // shrinkWrap: true,
              // padding: const EdgeInsets.all(0),
              // physics: const NeverScrollableScrollPhysics(),
              runSpacing: 10,
              spacing: 10,

              children: [
                ...state.attributesForm.attributes.entries.map((e) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: HexColor("#F5F5F5"),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TranslateText(
                      styleText: StyleText.h5,
                      fontWeight: FontWeight.w500,
                      text: getTitleAttributes(attributesForm: state.attributesAdsModel?.attributes, data: e.value.toString() ?? ''),
                      colorText: HexColor("#200E32"),
                    ),
                  );
                }),
              ],
            ),
            const Gap(
              20,
            ),
            Center(
              child: SizedBox(
                height: 50,
                width: context.width * 0.9,
                child: CustomButtonWidget(
                  text: 'publish'.tr(),
                  onPressed: () {
                    // context.goNamed(Routes.reviewAdsRoute);
                    AddAdsCubit.get(context).createAdd();
                  },
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  String getTitleAttributes({
    required List<Attributes>? attributesForm,
    required String data,
  }) {
    String title = '';
    for (Attributes item in attributesForm ?? []) {
      item.children?.forEach((element) {
        if (element.id.toString() == data) {
          title = element.title ?? '';
        }
      });
    }
    return title;
  }
}

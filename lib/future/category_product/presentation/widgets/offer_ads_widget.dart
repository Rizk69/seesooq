import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';

import 'offer_widget.dart';

class OfferAdsWidget extends StatelessWidget {
  const OfferAdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TranslateText(
            text: 'Is offer'.tr(),
            styleText: StyleText.h5,
            fontWeight: FontWeight.bold,
            colorText: Colors.white,
          ),
        ),
        BlocSelector<AddAdsCubit, AddAdsState, bool>(
          selector: (state) => state.isOffer,
          builder: (context, state) {
            var cubit = AddAdsCubit.get(context);
            return Switch.adaptive(
              value: state,
              onChanged: (value) {
                cubit.updateIsOffer(value);
                if (value) {
                  // ignore: avoid_print
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Gap(20),
                              OfferWidget(
                                offerType: OfferType.date,
                                onChanged: (value) {},
                              ),
                              const Gap(20),
                              OfferWidget(
                                offerType: OfferType.date,
                                onChanged: (value) {},
                              ),
                              const Gap(20),
                              OfferWidget(
                                offerType: OfferType.time,
                                onChanged: (value) {},
                              ),
                              const Gap(20),
                              OfferWidget(
                                offerType: OfferType.time,
                                onChanged: (value) {},
                              ),
                            ],
                          ))).whenComplete(() {
                    if (cubit.state.attributesForm.offerPrice.isEmpty) {
                      cubit.updateIsOffer(false);
                    }
                  });
                } else {
                  // ignore: avoid_print
                  print('off');
                }
              },
            );
          },
        ),
      ],
    );
  }
}

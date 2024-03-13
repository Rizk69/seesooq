import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/packages/data/models/packages_model.dart';

class PackageItemWidget extends StatelessWidget {
  const PackageItemWidget({super.key, required this.packagesData});

  final PackagesData packagesData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: HexColor(packagesData.color.toString()).withOpacity(0.2),
                  child: Icon(
                    Icons.airplanemode_active_rounded,
                    size: 40,
                    color: HexColor(packagesData.color.toString()),
                  ),
                ),
                const Gap(10),
                TranslateText(
                  styleText: StyleText.h4,
                  text: packagesData.packageName.toString(),
                  fontWeight: FontWeight.w700,
                  colorText: HexColor(packagesData.color.toString()),
                )
              ],
            ),
            const Gap(10),
            TranslateText(
              styleText: StyleText.h4,
              fontSize: 16,
              text: 'dksahkldjhjsakhdkjsahjkdhjksahjkdhsakjdhjksahdjkhsajkdhjksahdjkhasjk',
              maxLines: 2,
              colorText: HexColor('#707070'),
              fontWeight: FontWeight.w400,
            ),
            const Gap(20),
            Row(
              children: [
                TranslateText(
                  styleText: StyleText.h4,
                  text: '${packagesData.price} JD',
                  fontWeight: FontWeight.w700,
                  colorText: HexColor(packagesData.color.toString()),
                ),
                const Gap(10),
                TranslateText(
                  styleText: StyleText.h4,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  text: 'every ${packagesData.days} day',
                )
              ],
            ),
            const Gap(20),
            SizedBox(
              height: context.height * 0.35,
              child: ListView.builder(
                itemCount: packagesData.attributes?.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: HexColor(packagesData.color.toString()),
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            const Gap(10),
                            TranslateText(
                              styleText: StyleText.h4,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              text: packagesData.attributes?[index].attributeName.toString() ?? '',
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Center(
              child: CustomButtonWidget(
                text: 'Subscribe',
                backgroundColor: HexColor(packagesData.color.toString()),
                color: Colors.white,
                onPressed: () {
                  context.goNamed(
                    Routes.paymentGateway,
                    extra: packagesData.price,
                    queryParameters: {'type': 'package'},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

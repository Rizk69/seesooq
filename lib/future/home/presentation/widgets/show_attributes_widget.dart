import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/data/models/attributes_data_type_model.dart';
import 'package:opensooq/future/home/presentation/cubit/show_advertisment_state.dart';

class ShowAttributesWidget extends StatelessWidget {
  const ShowAttributesWidget({super.key, required this.state});

  final ShowAdvertismentState state;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          dynamic attributeData = state.advertisementModel?.data?.attributes?[index] ?? AttributesDataTypeModel();
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: HexColor("#F5F5F5"),
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [HexColor("#4C0497"), HexColor("#4C0497").withOpacity(0.5)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  const Gap(10),
                  TranslateText(
                    styleText: StyleText.h5,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    text: attributeData['attribute']['title'].toString() ?? '',
                    colorText: HexColor("#200E32"),
                  ),
                ],
              ),
              Row(
                children: [
                  TranslateText(
                    styleText: StyleText.h5,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    text: attributeData['value'].toString() ?? '',
                    colorText: HexColor("#200E32"),
                  ),
                ],
              )
            ],
          );
        },
        separatorBuilder: (context, index) => const Gap(10),
        itemCount: state.advertisementModel?.data?.attributes?.length ?? 0);
  }
}

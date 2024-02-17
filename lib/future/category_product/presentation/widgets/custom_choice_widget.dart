import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category_product/data/models/attributes_ads_model.dart';

class CustomChoiceWidget extends StatefulWidget {
  const CustomChoiceWidget({super.key, required this.options, required this.index, required this.onSelected});
  final List<Children> options;
  final int index;

  final Function(int) onSelected;

  @override
  State<CustomChoiceWidget> createState() => _CustomChoiceWidgetState();
}

class _CustomChoiceWidgetState extends State<CustomChoiceWidget> {
  late int deliveryServiceIndex;
  late List<Children> options;
  @override
  initState() {
    super.initState();
    deliveryServiceIndex = widget.index;
    options = widget.options;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...options
            .asMap()
            .map(
              (key, e) => MapEntry(
                key,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        deliveryServiceIndex = key;
                        widget.onSelected(e.id?.toInt() ?? 0);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: deliveryServiceIndex == options.indexOf(e) ? AppColors.primary : HexColor('#F5F5F5'),
                          borderRadius: BorderRadius.circular(10)),
                      child: TranslateText(
                        text: e.title ?? '',
                        styleText: StyleText.h4,
                        fontSize: 16,
                        colorText: deliveryServiceIndex == options.indexOf(e) ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .values
      ],
    );
  }
}

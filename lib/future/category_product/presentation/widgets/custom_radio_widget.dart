import 'package:flutter/material.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class CustomRadioWidget extends StatefulWidget {
  const CustomRadioWidget({super.key, required this.titles, required this.index, required this.onSelected});
  final List<String> titles;
  final int index;

  final Function(String) onSelected;

  @override
  State<CustomRadioWidget> createState() => _CustomRadioWidgetState();
}

class _CustomRadioWidgetState extends State<CustomRadioWidget> {
  late int deliveryServiceIndex;
  late List<String> titles;
  @override
  initState() {
    super.initState();
    deliveryServiceIndex = widget.index;
    titles = widget.titles;
  }

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      onChanged: (value) {
        setState(() {
          deliveryServiceIndex = titles.indexOf(value.toString());
        });
        widget.onSelected(value.toString());
      },
      value: titles[deliveryServiceIndex],
      groupValue: titles[deliveryServiceIndex],
      title: TranslateText(
        text: titles[deliveryServiceIndex],
        styleText: StyleText.h4,
        fontSize: 16,
        colorText: deliveryServiceIndex == titles.indexOf(titles[deliveryServiceIndex]) ? Colors.white : Colors.black,
      ),
    );
  }
}

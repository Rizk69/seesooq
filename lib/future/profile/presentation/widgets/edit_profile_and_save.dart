import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class EditProfileAndSave extends StatelessWidget {
  const EditProfileAndSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const TranslateText(
          styleText: StyleText.h4,
          text: 'editProfile',
        ),
        CustomButtonWidget(
          color: Colors.grey,
          text: 'save',
          onPressed: () {},
        ),
      ],
    );
  }
}

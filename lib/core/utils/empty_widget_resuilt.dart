import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import '../widget/text_translate_manager.dart';
import 'assets_manager.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key, this.title, this.subTitle, this.isButton})
      : super(key: key);
  final String? title;
  final String? subTitle;
  final bool? isButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          ImgAssets.empty,
          height: context.width * 0.5,
          width: context.width * 0.7,
          fit: BoxFit.fill,
          delegates: LottieDelegates(
            text: (initialText) => '**$initialText**',
            values: [
              ValueDelegate.color(
                const ['**', 'Shape Layer 3', '**'],
                value: Theme.of(context).colorScheme.primary,
              ),
              ValueDelegate.color(
                const ['**', 'Screwdriver Outlines 1', '**'],
                value: Theme.of(context).colorScheme.primary,
              ),
              ValueDelegate.opacity(
                const ['**', 'Screw Driver Outlines', '**'],
                value: 60,
              ),
            ],
          ),
        ),
        TranslateText(
          styleText: StyleText.h2,
          text: title ?? 'empty',
          textAlign: TextAlign.center,
        ),
        TranslateText(
          styleText: StyleText.b1,
          text: subTitle ?? 'noDataHere',
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        if (isButton ?? true)
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: context.width / 2.5,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 25,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  TranslateText(
                    styleText: StyleText.h5,
                    text: 'goBack',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../widget/text_translate_manager.dart';
import 'hex_color.dart';

void customShowModalBottomSheet({required BuildContext context}) {
  showModalBottomSheet<int>(
    backgroundColor: Colors.transparent,
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    builder: (context) {
      return Popover(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TranslateText(text: 'multiService', styleText: StyleText.h5),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  3,
                  (index) => Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: index != 0
                                    ? HexColor('#F6F6F6')
                                    : Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              items[index],
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      )).toList(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TranslateText(text: 'category.json', styleText: StyleText.h5),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                    4,
                    (index) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 85,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: index != 0
                                      ? HexColor('#F6F6F6')
                                      : Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                  child: Text(
                                itemsCategory[index],
                                style: Theme.of(context).textTheme.headlineSmall,
                              )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )).toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TranslateText(text: 'subCategory', styleText: StyleText.h5),
          const SizedBox(
            height: 10,
          ),
          // DropDownItemsApp(item: subCategory),
          const SizedBox(
            height: 10,
          ),
          const TranslateText(text: 'country', styleText: StyleText.h5),
          const SizedBox(
            height: 10,
          ),
          // DropDownItemsApp(item: city),
          const SizedBox(
            height: 10,
          ),
          const TranslateText(text: 'city', styleText: StyleText.h5),
          const SizedBox(
            height: 10,
          ),
          // DropDownItemsApp(item: country),
          const SizedBox(
            height: 10,
          ),
          const TranslateText(text: 'rating', styleText: StyleText.h5),
          const SizedBox(
            height: 10,
          ),
          //const RatingWidget(),
          const SizedBox(
            height: 20,
          ),

          // CustomButtonApp(
          //   title: 'filter',
          //   onPress: () => Navigator.of(context).pop(),
          // )
        ],
      ));
    },
  );
}

List items = [
  'Products',
  'Market\nPlace',
  'Business\nDirectory',
  'Service\nProvider'
];
List itemsCategory = [
  'Interior',
  'Exterior',
  'Maintenance&\nRepairs',
  'Construction'
];
List<String> subCategory = [
  'Interior',
  'Exterior',
  'Maintenance&\nRepairs',
  'Construction'
];
List<String> city = [
  'Interior',
  'Exterior',
  'Maintenance&\nRepairs',
  'Construction'
];
List<String> country = [
  'Interior',
  'Exterior',
  'Maintenance&\nRepairs',
  'Construction'
];

class Popover extends StatelessWidget {
  const Popover({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: _buildHandle(context)),
            const Center(
                child: TranslateText(
                    text: 'searchFilter', styleText: StyleText.h4)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                child,
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHandle(BuildContext context) {

    return FractionallySizedBox(
      widthFactor: 0.15,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Container(
          height: 9.0,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
        ),
      ),
    );
  }
}

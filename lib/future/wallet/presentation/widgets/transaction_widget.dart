import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/extensions.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class TransactionWidget extends StatefulWidget {
  const TransactionWidget({super.key});

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TranslateText(
                styleText: StyleText.h4,
                text: 'Transactions',
              ),
              InkWell(
                onTap: () {
                  showDatePicker(
                    context: context,
                    firstDate: DateTime(2000, 2, 1),
                    lastDate: DateTime.now(),
                    initialDate: DateTime.now(),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          colorScheme: const ColorScheme.light().copyWith(
                            primary: Colors.purple,
                            background: Colors.white,
                            surfaceTint: Colors.white,
                          ),
                        ),
                        child: child!,
                      );
                    },
                  ).then((value) {
                    setState(() {
                      _dateTime = value ?? DateTime.now();
                    });
                  });
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      size: 14,
                      color: Colors.grey,
                    ),
                    Text('${_dateTime.shortMonthAndYear()} '),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              itemBuilder: (context, index) => Container(
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: const Offset(0, 0.3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(10),
                      TranslateText(
                        styleText: StyleText.h4,
                        text: '17',
                        fontSize: 14,
                        colorText: Colors.black,
                      ),
                      Gap(10),
                      TranslateText(
                        styleText: StyleText.h6,
                        text: 'Sunday',
                        fontSize: 14,
                        colorText: Colors.black,
                      ),
                    ],
                  )),
              separatorBuilder: (context, index) => const Gap(10),
              itemCount: 5),
        ),
        const Gap(10),
        ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(0, 0.3), // changes position of shadow
                ),
              ],
            ),
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                onTap: () {},
                title: const TranslateText(
                  styleText: StyleText.h4,
                  text: 'Transaction Details',
                  fontSize: 14,
                  colorText: Colors.black,
                ),
                subtitle: TranslateText(
                  styleText: StyleText.h6,
                  text: DateTime.now().shortMonthAndYear(),
                  fontSize: 14,
                  colorText: Colors.black,
                ),
                leading: CircleAvatar(
                  backgroundColor: HexColor('#FDEBE7'),
                  radius: 30,
                  child: Image.asset(
                    'tran_img'.toPng,
                    fit: BoxFit.contain,
                    width: 30,
                    height: 30,
                    color: HexColor('#FF6E6E'),
                  ),
                ),
                trailing: TranslateText(
                  styleText: StyleText.h4,
                  text: '100 JD +',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  colorText: HexColor('#4C0497'),
                )),
          ),
          separatorBuilder: (context, index) => const Gap(10),
          shrinkWrap: true,
          itemCount: 10,
        )
      ],
    );
  }
}

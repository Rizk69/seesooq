import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/whatsapp_chat.dart';
import 'package:opensooq/future/home/presentation/cubit/show_advertisment_state.dart';

class CallOrChatButtonWidget extends StatelessWidget {
  const CallOrChatButtonWidget({super.key, required this.state});
  final ShowAdvertismentState state;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomButtonWidget(
            onPressed: () {},
            text: 'message',
            color: HexColor('200E32'),
            icon: SvgPicture.asset(
              'message_cat'.toSvg,
              width: 25,
              height: 25,
              color: HexColor('#F05A35'),
            ),
            backgroundColor: HexColor("#F5F5F5"),
          ),
        ),
        const Gap(10),
        Expanded(
          child: CustomButtonWidget(
            onPressed: () {
              var number = state.advertisementModel?.data?.phone ?? '';
              if (!number.startsWith('0')) {
                number = '0$number';
              }
              callNumber(number);
            },
            text: 'call',
            color: Colors.white,
            icon: SvgPicture.asset(
              'call_cat'.toSvg,
              width: 25,
              height: 25,
              color: Colors.white,
            ),
            backgroundColor: HexColor("#F05A35"),
          ),
        ),
      ],
    );
  }
}

class CallOrChatButtonOwnerAdsSectionWidget extends StatelessWidget {
  const CallOrChatButtonOwnerAdsSectionWidget({super.key, required this.state});
  final ShowAdvertismentState state;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomButtonWidget(
            onPressed: () {},
            text: 'message',
            color: HexColor('200E32'),
            icon: SvgPicture.asset(
              'message_cat'.toSvg,
              width: 25,
              height: 25,
              color: HexColor('#F05A35'),
            ),
            backgroundColor: HexColor("#F5F5F5"),
          ),
        ),
        const Gap(10),
        Expanded(
          child: CustomButtonWidget(
            onPressed: () {
              var number = state.advertisementModel?.data?.user?.phone ?? '';
              if (!number.startsWith('0')) {
                number = '0$number';
              }
              callNumber(number);
            },
            text: 'call',
            color: HexColor('200E32'),
            icon: SvgPicture.asset(
              'call_cat'.toSvg,
              width: 25,
              height: 25,
              color: HexColor('#F05A35'),
            ),
            backgroundColor:  HexColor("#F5F5F5"),
          ),
        ),
      ],
    );
  }
}

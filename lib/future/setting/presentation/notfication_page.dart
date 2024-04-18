import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/setting/presentation/cubit/notification_cubit/notification_cubit.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/hex_color.dart';
import '../../../core/utils/svg_custom_image.dart';

class NotificationSettingPage extends StatelessWidget {
  const NotificationSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: BlocBuilder<NotificationCubit, NotificationState>(
            builder: (context, state) {
              final notificationCubit = context.read<NotificationCubit>();

              return Column(
                children: [
                  HeaderScreens(
                    title: 'notifications',
                    onPressed: () {
                      context.go(Routes.setting);
                    },
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  buildRow(
                      context, notificationCubit, 'العنصر الأول', 'assets/images/svg/notification.svg', 'عنوان رئيسي 1', 'وصف إعداد الإشعار الأول'),
                  const SizedBox(
                    height: 25,
                  ),
                  buildRow(
                      context, notificationCubit, 'العنصر الثاني', 'assets/images/svg/notification.svg', 'عنوان رئيسي 2', 'وصف إعداد الإشعار الثاني'),
                  const SizedBox(
                    height: 25,
                  ),
                  buildRow(
                      context, notificationCubit, 'العنصر الثالث', 'assets/images/svg/notification.svg', 'عنوان رئيسي 3', 'وصف إعداد الإشعار الثالث'),
                  const SizedBox(
                    height: 25,
                  ),
                  buildRow(
                      context, notificationCubit, 'العنصر الرابع', 'assets/images/svg/notification.svg', 'عنوان رئيسي 4', 'وصف إعداد الإشعار الرابع'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildRow(
    BuildContext context,
    NotificationCubit notificationCubit,
    String title,
    String img,
    String textTitle,
    String textDescription,
  ) {
    return Row(
      children: [
        Switch(
          thumbColor: MaterialStatePropertyAll<Color>(Colors.white),
          inactiveTrackColor: Colors.grey,
          trackOutlineColor: MaterialStatePropertyAll<Color>(Colors.transparent),
          value: notificationCubit.state.selectedItems.contains(title),
          onChanged: (value) {
            notificationCubit.toggleItem(title);
          },
        ),
        const Spacer(),
        contactText(
          title: textTitle,
          des: textDescription,
        ),
        const SizedBox(
          width: 20,
        ),
        CircleAvatar(
          backgroundColor: HexColor('#F9F9F9'),
          radius: 25,
          child: SvgCustomImage(
            image: img,
            width: 25,
            height: 25,
          ),
        ),
      ],
    );
  }

  Widget contactText({
    required String title,
    required String des,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          des,
          style: TextStyle(
            fontSize: 15,
            color: HexColor('707070'),
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

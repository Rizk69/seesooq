import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/home/presentation/widgets/card_personal_widget.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key, required this.user});
  final User? user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: AppColors.linerColors,
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
      ),
      child: const CardPersonalWidget(
        bodyText: 'yazan turk',
        type: CardPersonalWidgetType.drawer,
      ),
    );
  }
}

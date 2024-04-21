import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:opensooq/core/utils/media_query_values.dart';

class SomThingWentWrongWidget extends StatelessWidget {
   const SomThingWentWrongWidget({super.key, this.height, this.width});

  final double? height ;
  final double ?width ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset('error_wrong'.toLottie, height: height , width: width),
        const SizedBox(
          height: 20,
        ),
        Text(
          'something_went_wrong'.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

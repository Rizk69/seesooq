import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';

class CustomImageSelectedWidget extends StatelessWidget {
  const CustomImageSelectedWidget({super.key, required this.index, required this.onTap});

  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var state = AddAdsCubit.get(context).state;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
          gradient: index != 0
              ? null
              : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: AppColors.linerColors,
                ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: index == 0 ? onTap : null,
              child: Container(
                width: 70,
                height: 60,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: index == 0
                      ? null
                      : LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: AppColors.linerColors,
                        ),
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'camera'.toSvg,
                  color: index != 0 ? null : AppColors.primary,
                ),
              ),
            )
          ],
        ));
  }
}

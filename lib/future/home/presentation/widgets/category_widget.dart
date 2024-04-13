import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart';
import 'package:opensooq/future/category/presentation/cubit/category_state.dart';
import 'package:opensooq/future/home/presentation/widgets/category_item_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (state.category.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TranslateText(
                        styleText: StyleText.h5,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        text: 'departments'.tr(),
                      ),
                      InkWell(
                        onTap: () {
                          context.goNamed(Routes.categoryView);
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TranslateText(
                              styleText: StyleText.h6,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              text: 'more'.tr(),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: AppColors.primaryColorText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        tileMode: TileMode.repeated,
                        stops: const [0.01, 2, 0],
                        colors: [
                          Colors.white,
                          AppColors.primary.withOpacity(0.8),
                          AppColors.primary,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          (state.categoryStatus == CategoryStatus.loading)
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...state.category.map((e) {
                        return CategoryItemWidget(
                          categoryName: e.name ?? '',
                          logo: e.logo ?? '',
                          categoryId: e.id.toString() ?? '',
                        );
                      }),
                    ],
                  ),
                ),
          const Gap(10),
        ],
      );
    });
  }
}

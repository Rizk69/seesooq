import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/custom_app_bar.dart';
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart';
import 'package:opensooq/future/category/presentation/cubit/category_state.dart';
import 'package:opensooq/future/home/presentation/widgets/category_item_widget.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(builder: (context, state) {
      return Scaffold(
        appBar: CustomAppBar(
          title: 'category'.tr(),
        ),
        body: RefreshIndicator.adaptive(
            child: CustomScrollView(
              slivers: [
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => CategoryItemWidget(
                      categoryName: state.category[index].name ?? '',
                      logo: state.category[index].logo ?? '',
                      categoryId: state.category[index].id.toString() ?? '',
                      isGust: false,
                    ),
                    childCount: state.category.length,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: context.withFormFactor(
                        onMobile: 4, onTablet: 6, onDesktop: 8)!,
                    childAspectRatio: 0.8,
                  ),
                )
              ],
            ),
            onRefresh: () async {
              await context.read<CategoryCubit>().initialize();
            }),
      );
    });
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/widget/custom_app_bar.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart';
import 'package:opensooq/future/category/presentation/cubit/details_category_state.dart';
import 'package:opensooq/future/category/presentation/widgets/details_item_category.dart';

class DetailsCategoryView extends StatelessWidget {
  const DetailsCategoryView({super.key, required this.categoryName, required this.categoryId});

  final String categoryName;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsCategoryCubit(categoryRepository: di.sl())
        ..getDetailsCategory(
          categoryId: categoryId,
        ),
      child: BlocBuilder<DetailsCategoryCubit, DetailsCategoryState>(
        builder: (context, state) {
          var cubit = BlocProvider.of<DetailsCategoryCubit>(context);
          return Scaffold(
            appBar: CustomAppBar(title: categoryName),
            body: state.detailsCategory.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('no_data'.tr()),
                      ],
                    ),
                  )
                : CustomScrollView(
                    shrinkWrap: true,
                    slivers: [
                      SliverList(
                          delegate: SliverChildBuilderDelegate((context, index) {
                        return DetailsItemCategory(
                          onTap: () => context.pushNamed(Routes.oneCategoryView, extra: {
                            'categoryId': state.detailsCategory[index].id,
                            'categoryName': state.detailsCategory[index].name,
                            'cubit': cubit,
                          }),
                          categoryImage: state.detailsCategory[index].logo ?? '',
                          categoryName: state.detailsCategory[index].name ?? '',
                          numberOfAds: '2',
                        );
                      }, childCount: state.detailsCategory.length)),
                    ],
                  ),
          );
        },
      ),
    );
  }
}

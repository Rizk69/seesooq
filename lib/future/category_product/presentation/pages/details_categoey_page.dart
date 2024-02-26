import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart';
import 'package:opensooq/future/category/presentation/cubit/details_category_state.dart';
import 'package:opensooq/future/category/presentation/widgets/details_item_category.dart';
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart';

class DetailsCategoryProductPage extends StatelessWidget {
  final String categoryName;
  final String categoryId;

  const DetailsCategoryProductPage({Key? key, required this.categoryName, required this.categoryId})
      : super(key: key ?? const ValueKey<String>('categoeyProductPage'));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsCategoryCubit(categoryRepository: di.sl())
        ..getDetailsCategory(
          categoryId: categoryId.toString(),
        ),
      child: BlocBuilder<DetailsCategoryCubit, DetailsCategoryState>(builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async {},
          child: CustomScrollView(
            slivers: [
              if (state.detailsCategoryStatus == DetailsCategoryStatus.success)
                SliverList.separated(
                  itemBuilder: (context, index) => DetailsItemCategory(
                      categoryName: state.detailsCategory[index].name ?? '',
                      onTap: () {
                        Future.microtask(
                            () => context.read<CategoryProductCubit>().selectCategory(subCategory: state.detailsCategory[index].id.toString()));
                        context.pushNamed(Routes.uploadPhoto, extra: {'categoryName': categoryName, 'details': "Cars For Sales"});
                        // context.pushNamed(Routes.uploadAdsPage, extra: {"categoryName": categoryName, "details": 'details', "model": "10"});
                      },
                      numberOfAds: state.detailsCategory[index].id.toString(),
                      categoryImage: state.detailsCategory[index].logo ?? ''),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                  itemCount: state.detailsCategory.length,
                ),
              if (state.detailsCategoryStatus == DetailsCategoryStatus.loading)
                const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
            ],
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/category/presentation/widgets/details_item_category.dart';
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/category_product_state.dart';

class CategoryProductPage extends StatelessWidget {
  const CategoryProductPage({
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('categoeyProductPage'));

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryProductCubit, CategoryProductState>(builder: (context, state) {
      return Builder(builder: (context) {
        return CustomScrollView(
          slivers: [
            if (state.categoryProductStatus == CategoryProductStatus.loaded)
              SliverList.separated(
                itemBuilder: (context, index) => DetailsItemCategory(
                    categoryName: state.categoryProduct[index].name ?? '',
                    onTap: () => context.goNamed(Routes.detailsCategoryPage, extra: {
                          'categoryName': state.categoryProduct[index].name.toString(),
                          'categoryId': state.categoryProduct[index].id.toString()
                        }, queryParameters: {
                          'categoryName': state.categoryProduct[index].name.toString()
                        }),
                    numberOfAds: state.categoryProduct[index].id.toString(),
                    categoryImage: state.categoryProduct[index].logo ?? ''),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: state.categoryProduct.length,
              ),
            if (state.categoryProductStatus == CategoryProductStatus.loading)
              const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
          ],
        );
      });
    });
  }
}

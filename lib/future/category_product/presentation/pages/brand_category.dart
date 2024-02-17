import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart';
import 'package:opensooq/future/category/presentation/cubit/category_state.dart';
import 'package:opensooq/future/category_product/presentation/widgets/details_cat_ads_widget.dart';

class BrandCategoryPage extends StatefulWidget {
  const BrandCategoryPage({super.key, required this.categoryName, required this.details});
  final String categoryName;
  final String details;

  @override
  State<BrandCategoryPage> createState() => _BrandCategoryPageState();
}

class _BrandCategoryPageState extends State<BrandCategoryPage> {
  final search = TextEditingController();

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(builder: (context, state) {
      return CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormFiledApp(hintText: 'Search by Ad Title or ID', textEditingController: search),
            automaticallyImplyLeading: false,
            centerTitle: true,
            toolbarHeight: kToolbarHeight + 40,
          ),
          SliverList.separated(
            itemBuilder: (context, index) {
              return DetailsItemCategoryAdsWidget(
                onTap: () {
                  context.goNamed(Routes.uploadPhoto);
                },
                categoryImage: 'https://via.placeholder.com/150',
                categoryName: widget.categoryName,
                numberOfAds: widget.details,
              );
            },
            itemCount: 4,
            separatorBuilder: (context, index) => const SizedBox(
              height: 6,
            ),
          ),
          // SliverList();
        ],
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/di.dart' as di;
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart';
import 'package:opensooq/future/category_product/presentation/widgets/custom_image_filled_widget.dart';
import 'package:opensooq/future/category_product/presentation/widgets/custom_image_selected_widget.dart';

class UploadPhotoPage extends StatelessWidget {
  final String categoryName;
  final String details;

  const UploadPhotoPage({super.key, required this.categoryName, required this.details});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddAdsCubit(categoryRepo: di.sl())
        ..selectSubCategory(subCategory: CategoryProductCubit.get(context).state.selectedSubCategory)
        ..getAttributesForAds(),
      child: BlocBuilder<AddAdsCubit, AddAdsState>(builder: (context, state) {
        var cubit = AddAdsCubit.get(context);
        return state.images.isNotEmpty
            ? Column(
                children: [
                  MasonryGridView.count(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CustomImageFilledWidget(
                      image: state.images[index],
                    ),
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    itemCount: state.images.length,
                  ),
                  CustomButtonWidget(
                      color: Colors.white,
                      text: 'Next',
                      onPressed: () {
                        context.pushNamed(Routes.uploadAdsPage,
                            extra: {"categoryName": categoryName, "details": details, "model": "10", "cubit": AddAdsCubit.get(context)});
                      })
                ],
              )
            : MasonryGridView.count(
                itemBuilder: (context, index) => CustomImageSelectedWidget(
                  onTap: () async {
                    cubit.uploadPhoto();
                  },
                  index: index,
                ),
                crossAxisCount: 3,
                itemCount: 20,
              );
      }),
    );
  }
}

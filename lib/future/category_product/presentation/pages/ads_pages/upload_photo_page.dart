import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';
import 'package:opensooq/future/category_product/presentation/widgets/custom_image_selected_widget.dart';

class UploadPhotoPage extends StatelessWidget {
  final String categoryName;
  final String details;

  const UploadPhotoPage({super.key, required this.categoryName, required this.details});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdsCubit, AddAdsState>(builder: (context, state) {
      var cubit = AddAdsCubit.get(context);
      return state.images.isEmpty
          ? MasonryGridView.count(
              itemBuilder: (context, index) => CustomImageSelectedWidget(
                onTap: () async {
                  cubit.uploadPhoto();
                },
                index: index,
              ),
              crossAxisCount: 3,
              itemCount: 21,
            )
          : Column(
              children: [
                Wrap(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                cubit.uploadPhoto();
                              },
                              child: Container(
                                width: 70,
                                height: 60,
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  'camera'.toSvg,
                                  color: AppColors.primary,
                                ),
                              ),
                            )
                          ],
                        )),
                    MasonryGridView.count(
                      shrinkWrap: true,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      itemBuilder: (context, index) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.grey.shade300),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      width: 100,
                                      child: Image.file(
                                        File(state.images[index].path.toString()),
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                  ],
                                )),
                            Positioned(
                                child: IconButton(
                              icon: const Icon(Icons.delete),
                              padding: const EdgeInsets.all(0),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.white.withOpacity(0.5)),
                              ),
                              onPressed: () => cubit.removePhoto(index: index),
                            ))
                          ],
                        );
                      },
                      crossAxisCount: 3,
                      itemCount: (state.images.length),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButtonWidget(
                    color: Colors.white,
                    text: 'Next',
                    onPressed: () {
                      context.pushNamed(Routes.uploadAdsPage,
                          extra: {"categoryName": categoryName, "details": details, "model": "10", "cubit": AddAdsCubit.get(context)});
                    })
              ],
            );
    });
  }
}

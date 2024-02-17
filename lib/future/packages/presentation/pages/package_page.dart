import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/widget/custom_app_bar.dart';
import 'package:opensooq/future/packages/data/models/packages_model.dart';
import 'package:opensooq/future/packages/presentation/cubit/packages_cubit.dart';
import 'package:opensooq/future/packages/presentation/cubit/packages_state.dart';
import 'package:opensooq/future/packages/presentation/widgets/package_item_widget.dart';
import 'package:opensooq/future/packages/presentation/widgets/segmented_button__widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => PackagesCubit()..getPackagesList(),
        child: BlocBuilder<PackagesCubit, PackagesState>(builder: (context, state) {
          var cubit = context.read<PackagesCubit>();
          return Scaffold(
            appBar: const CustomAppBar(
              title: 'Packages',
              centerTitle: true,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SegmentedButtonWidget(
                  state: state,
                ),
                const Gap(20),
                if (state.packagesModel?.packages?.packagesData?.isNotEmpty ?? false)
                  Expanded(
                    child: PageView.builder(
                      pageSnapping: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      controller: cubit.controller,
                      itemCount: state.packagesModel?.packages?.packagesData?.length ?? 0,
                      itemBuilder: (context, index) {
                        return PackageItemWidget(
                          packagesData: state.packagesModel?.packages?.packagesData?[index] ?? PackagesData(),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SmoothPageIndicator(
                      count: state.packagesModel?.packages?.packagesData?.length ?? 0,
                      onDotClicked: (index) {
                        cubit.changePage(index);
                      },
                      effect: WormEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          activeDotColor: HexColor('#4C0497'),
                          paintStyle: PaintingStyle.stroke,
                          dotColor: Colors.grey,
                          spacing: 5),
                      controller: cubit.controller,
                    ),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}

import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/banner_shared_widget.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key, required this.cubit});

  final HomeCubit cubit;

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.cubit.state.bannersModel?.data?.banners?.isNotEmpty ?? false)
          BannerSharedWidget(
            length: widget.cubit.state.bannersModel?.data?.banners?.length ?? 0,
            onPageChanged: (value) {
              widget.cubit.updateIndex(value);
            },
            height: 160,
          ),
      ],
    );
  }
}

Map<int, List<String>> bannerData = {
  0: ['Trending Now', 'Big Sale 25%', 'Laptop & PC'],
  1: ['Trending Now', 'Big Sale 50%', 'Mobile'],
  2: ['Trending Now', 'Big Sale 11%', 'TV&Show'],
  3: ['Trending Now', 'Big Sale 43%', 'Car'],
};

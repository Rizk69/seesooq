import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/core/utils/cache_network_image.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/custom_failed_app.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/custom_app_bar.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart';
import 'package:opensooq/future/category/presentation/cubit/details_category_state.dart';

class OneCategoryView extends StatefulWidget {
  const OneCategoryView({super.key, required this.categoryName, required this.categoryId, required this.cubit});

  final String categoryName;
  final String categoryId;

  final DetailsCategoryCubit cubit;

  @override
  State<OneCategoryView> createState() => _OneCategoryViewState();
}

class _OneCategoryViewState extends State<OneCategoryView> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    widget.cubit.resetFilter();
    Future.wait([
      widget.cubit.getAdvertisementCategory(subCategory: widget.categoryId),
      widget.cubit.getAttributesByFilter(subCategory: widget.categoryId),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: BlocBuilder<DetailsCategoryCubit, DetailsCategoryState>(builder: (context, state) {
        var cubit = DetailsCategoryCubit.get(context);
        return Scaffold(
          backgroundColor: HexColor('#707070').withOpacity(0.08),
          appBar: CustomAppBar(title: widget.categoryName),
          body: CustomScrollView(
            controller: cubit.scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 6,
                          child: TextFormFiledApp(
                            prefixIcon: 'search_bar',
                            hintText: 'search'.tr(),
                            textEditingController: TextEditingController(),
                          )),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            showCustomModalBottomSheet(
                              context: context,
                              expand: true,
                              containerWidget: (_, animation, child) {
                                return DraggableScrollableSheet(
                                  expand: true,
                                  initialChildSize: 0.5,
                                  minChildSize: 0.5,
                                  maxChildSize: 0.9,
                                  builder: (_, controller) => Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: StatefulBuilder(builder: (context, setState) {
                                      return SingleChildScrollView(
                                        controller: controller,
                                        child: child,
                                      );
                                    }),
                                  ),
                                );
                              },
                              enableDrag: true,
                              bounce: true,
                              closeProgressThreshold: 0.2,
                              settings: const RouteSettings(name: 'Filter'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              builder: (context) {
                                return StatefulBuilder(builder: (context, setState) {
                                  return BlocProvider.value(
                                    value: widget.cubit,
                                    child: BlocBuilder<DetailsCategoryCubit, DetailsCategoryState>(builder: (context, stateCubit) {
                                      return Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 25, right: 16, left: 16, bottom: 30),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: TranslateText(
                                                      styleText: StyleText.h4,
                                                      colorText: AppColors.primary,
                                                      fontWeight: FontWeight.bold,
                                                      text: 'classification',
                                                    ),
                                                  ),
                                                  IconButton(
                                                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 11),
                                                    style: ButtonStyle(
                                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(20),
                                                          ),
                                                        ),
                                                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey.withOpacity(0.2))),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    icon: const Icon(
                                                      Icons.close,
                                                      size: 28,
                                                      color: Color(0Xff4C0497),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ...stateCubit.filterData?.attributes
                                                    ?.where((element) => element.children?.isNotEmpty ?? false)
                                                    .toList()
                                                    .map(
                                                      (e) => Container(
                                                        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                                                        decoration:
                                                            BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(15)),
                                                        child: ExpansionTile(
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                          title: TranslateText(
                                                            text: e.title.toString(),
                                                            styleText: StyleText.h5,
                                                          ),
                                                          children: [
                                                            Container(
                                                              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                                                              decoration:
                                                                  BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(15)),
                                                              child: Column(
                                                                children: e.children?.map(
                                                                      (childrenItem) {
                                                                        return Row(
                                                                          children: [
                                                                            Checkbox(
                                                                              value: stateCubit.idsFilterSelected[e.id.toString()]
                                                                                      ?.contains(childrenItem.id.toString()) ??
                                                                                  false,
                                                                              onChanged: (value) {
                                                                                cubit.selectedMultiIdsForOneQuestion(
                                                                                  e.id.toString(),
                                                                                  childrenItem.id.toString(),
                                                                                );
                                                                                setState(() {});
                                                                              },
                                                                              activeColor: Colors.white,
                                                                              checkColor: Colors.white,
                                                                              fillColor: MaterialStateProperty.resolveWith((states) {
                                                                                if (states.contains(MaterialState.selected)) {
                                                                                  return Colors.deepPurple;
                                                                                }
                                                                                return Colors.transparent;
                                                                              }),
                                                                            ),
                                                                            TranslateText(
                                                                              text: childrenItem.title.toString(),
                                                                              styleText: StyleText.h5,
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    ).toList() ??
                                                                    [],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                    .toList() ??
                                                [],
                                            BlocSelector<DetailsCategoryCubit, DetailsCategoryState, RangeValues>(
                                              selector: (state22) => state22.rangeValues,
                                              builder: (context, rangeValue) => RangeSlider(
                                                values: RangeValues(
                                                  rangeValue.start,
                                                  rangeValue.end,
                                                ),
                                                min: 0,
                                                max: 100000,
                                                divisions: 100,
                                                labels: RangeLabels(
                                                  rangeValue.start.round().toString(),
                                                  rangeValue.end.round().toString(),
                                                ),
                                                onChangeStart: (value) {
                                                  cubit.updateRangeValues(value);
                                                  setState(() {});
                                                },
                                                onChanged: (value) {
                                                  cubit.updateRangeValues(value);
                                                  setState(() {});
                                                },
                                                onChangeEnd: (value) {
                                                  cubit.updateRangeValues(value);
                                                  setState(() {});
                                                },
                                              ),
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(horizontal: 10),
                                                width: MediaQuery.of(context).size.width,
                                                child: CustomButtonWidget(
                                                  color: Colors.white,
                                                  text: 'search classification'.tr(),
                                                  onPressed: () {
                                                    cubit.sendFilter();
                                                  },
                                                )),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(horizontal: 10),
                                                width: MediaQuery.of(context).size.width,
                                                child: CustomButtonWidget(
                                                  disableBorder: Border.all(color: HexColor('#4C0497'), width: 2),
                                                  backgroundColor: Colors.white,
                                                  color: HexColor('#4C0497'),
                                                  text: 'resetting'.tr(),
                                                  onPressed: () {},
                                                )),
                                          ]);
                                    }),
                                  );
                                });
                              },
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
                            child: SvgCustomImage(
                              image: 'filter'.toSvg,
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (state.viewData == ViewData.normal) ...[
                SliverToBoxAdapter(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 11,
                        child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  HexColor('#4C0497'),
                                  HexColor('#4C0497').withOpacity(0.5),
                                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'filter',
                                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 23,
                                ),
                                Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            TranslateText(
                              styleText: StyleText.h5,
                              text: 'Jordan',
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TranslateText(
                              styleText: StyleText.h5,
                              text: state.advertisementModel?.meta?.total.toString() ?? '',
                            ),
                            SvgCustomImage(
                              image: 'number_ads'.toSvg,
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4),
                  sliver: SliverList.separated(
                    itemBuilder: (context, index) {
                      var item = state.advertisementModel!.data![index];

                      return InkWell(
                        onTap: () {
                          context.pushNamed('view_ads_home', extra: item.id.toString());
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 3,
                          shadowColor: Colors.grey.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: context.height * 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: item.album?.firstOrNull.split('.').last == 'svg'
                                              ? SvgPicture.network(
                                                  item.album.toString() ?? '',
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                )
                                              : CacheNetworkImageApp(
                                                  urlImage: item.album.toString() ?? '',
                                                  fit: BoxFit.cover,
                                                  height: context.height,
                                                ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          top: 5,
                                          child: Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Icon(
                                              Icons.favorite_border,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: TranslateText(
                                            styleText: StyleText.h5,
                                            text: item.title ?? '',
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            // File file = await urlToFile(
                                            //     'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/1012px-Tux.svg.png');
                                            // onShareWithFileOrImage('Car Model 2020', files: [file.path, file.path]);
                                          },
                                          child: SvgCustomImage(
                                            image: 'share'.toSvg,
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TranslateText(
                                      styleText: StyleText.h5,
                                      text: '${item.price} JD',
                                      fontWeight: FontWeight.bold,
                                      colorText: AppColors.primary,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgCustomImage(
                                              image: 'location'.toSvg,
                                              width: 20,
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            TranslateText(
                                              styleText: StyleText.h5,
                                              text: item.city ?? '--',
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SvgCustomImage(
                                              image: 'time_booking'.toSvg,
                                              width: 20,
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            TranslateText(
                                              styleText: StyleText.h5,
                                              text: item.createdAt?.removeAgo ?? '',
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: HexColor('#F5F5F5'),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SvgCustomImage(
                                                  image: 'message_cat'.toSvg,
                                                  width: 20,
                                                  height: 20,
                                                  color: HexColor('#F05A35'),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                TranslateText(
                                                  styleText: StyleText.h5,
                                                  text: 'message'.tr(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: HexColor('#F5F5F5'),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SvgCustomImage(
                                                  image: 'call_cat'.toSvg,
                                                  width: 20,
                                                  height: 20,
                                                  color: HexColor('#F05A35'),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                TranslateText(
                                                  styleText: StyleText.h5,
                                                  text: 'call'.tr(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: state.advertisementModel?.data?.length ?? 0,
                  ),
                ),
              ],
              if (state.viewData == ViewData.filters) ...[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            TranslateText(
                              styleText: StyleText.h5,
                              text: 'Jordan',
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TranslateText(
                              styleText: StyleText.h5,
                              text: state.filterAdvertisementModel?.meta?.total.toString() ?? '',
                            ),
                            SvgCustomImage(
                              image: 'number_ads'.toSvg,
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4),
                  sliver: SliverList.separated(
                    itemBuilder: (context, index) {
                      var item = state.filterAdvertisementModel!.data![index];

                      return InkWell(
                        onTap: () {
                          context.pushNamed('view_ads_home', extra: item.id.toString());
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 3,
                          shadowColor: Colors.grey.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: context.height * 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: item.album?.firstOrNull.split('.').last == 'svg'
                                              ? SvgPicture.network(
                                                  item.album.toString() ?? '',
                                                  height: 100,
                                                  fit: BoxFit.cover,
                                                )
                                              : CacheNetworkImageApp(
                                                  urlImage: item.album.toString() ?? '',
                                                  fit: BoxFit.cover,
                                                  height: context.height,
                                                ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          top: 5,
                                          child: Container(
                                            padding: const EdgeInsets.all(6),
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: TranslateText(
                                            styleText: StyleText.h5,
                                            text: item.title ?? '',
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            // File file = await urlToFile(
                                            //     'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/1012px-Tux.svg.png');
                                            // onShareWithFileOrImage('Car Model 2020', files: [file.path, file.path]);
                                          },
                                          child: SvgCustomImage(
                                            image: 'share'.toSvg,
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TranslateText(
                                      styleText: StyleText.h5,
                                      text: '${item.price} JD',
                                      fontWeight: FontWeight.bold,
                                      colorText: AppColors.primary,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SvgCustomImage(
                                              image: 'location'.toSvg,
                                              width: 20,
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            TranslateText(
                                              styleText: StyleText.h5,
                                              text: item.city ?? '--',
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SvgCustomImage(
                                              image: 'time_booking'.toSvg,
                                              width: 20,
                                              height: 20,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            TranslateText(
                                              styleText: StyleText.h5,
                                              text: item.createdAt?.removeAgo ?? '',
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: HexColor('#F5F5F5'),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SvgCustomImage(
                                                  image: 'message_cat'.toSvg,
                                                  width: 20,
                                                  height: 20,
                                                  color: HexColor('#F05A35'),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                TranslateText(
                                                  styleText: StyleText.h5,
                                                  text: 'message'.tr(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: HexColor('#F5F5F5'),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SvgCustomImage(
                                                  image: 'call_cat'.toSvg,
                                                  width: 20,
                                                  height: 20,
                                                  color: HexColor('#F05A35'),
                                                ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                TranslateText(
                                                  styleText: StyleText.h5,
                                                  text: 'call'.tr(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: state.filterAdvertisementModel?.data?.length ?? 0,
                  ),
                ),
              ]
            ],
          ),
        );
      }),
    );
  }
}

// create arr key and value

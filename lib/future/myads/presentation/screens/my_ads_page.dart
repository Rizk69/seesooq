import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/custom_buttom_sheet_remove.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/myads/bloc/myads_state.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/widgets/header_screen.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/widget/text_translate_manager.dart';
import '../../bloc/myads_bloc.dart';

class MyAdsPage extends StatelessWidget {
  const MyAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderScreens(
                title: 'ads_drawer',
                onPressed: () {
                  context.pop();
                },
              ),
              const SizedBox(height: 20),
              //
              // const SizedBox(height: 25),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(20),
              //     boxShadow: const [
              //       BoxShadow(
              //         color: Colors.grey,
              //         blurRadius: 8,
              //         spreadRadius: 1,
              //       )
              //     ],
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.all(12.0),
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Image.asset(
              //           'assets/images/car_details_category.png',
              //           fit: BoxFit.cover,
              //           height: 120,
              //         ),
              //         const SizedBox(width: 10),
              //         Expanded(
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: [
              //               Row(
              //                 children: [
              //                   titleText('عنوان الإعلان هنا', Colors.black,
              //                       StyleText.h5),
              //                   const Spacer(),
              //                   Row(
              //                     mainAxisAlignment: MainAxisAlignment.end,
              //                     children: [
              //                       SvgPicture.asset(
              //                         'assets/images/svg/edit_profile.svg',
              //                         height: 20,
              //                         color: Colors.red,
              //                       ),
              //                       const SizedBox(
              //                         width: 15,
              //                       ),
              //                       SvgPicture.asset(
              //                         'assets/images/svg/icons_ads/deleteIcon.svg',
              //                         height: 20,
              //                         color: Colors.red,
              //                       ),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 8,
              //               ),
              //               titleText(
              //                   '25,000 EGP', HexColor('4C0497'), StyleText.h5),
              //               const SizedBox(
              //                 height: 8,
              //               ),
              //               Row(
              //                 children: [
              //                   const Icon(Icons.remove_red_eye_outlined,
              //                       color: Colors.grey),
              //                   SizedBox(
              //                     width: 5,
              //                   ),
              //                   titleText(
              //                       'عدد المشاهدات', Colors.grey, StyleText.h6),
              //                   SizedBox(
              //                     width: 8,
              //                   ),
              //                   Icon(Icons.date_range, color: Colors.grey),
              //                   SizedBox(
              //                     width: 5,
              //                   ),
              //                   titleText('ينتهى 10 فبراير', Colors.grey,
              //                       StyleText.h6),
              //                 ],
              //               ),
              //               SizedBox(
              //                 height: 12,
              //               ),
              //               Row(
              //                 children: [
              //                   Expanded(
              //                     child: Container(
              //                       padding: EdgeInsets.symmetric(vertical: 10),
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(12),
              //                         color: HexColor('FFEBCC'),
              //                       ),
              //                       child: Center(
              //                         child: TranslateText(
              //                           styleText: StyleText.h4,
              //                           fontSize: 16,
              //                           text: 'قيد الانتظار',
              //                           colorText: HexColor('FFA000'),
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     width: 10,
              //                   ),
              //                   Expanded(
              //                     child: Container(
              //                       padding: EdgeInsets.symmetric(vertical: 10),
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(12),
              //                         color: HexColor('F1F1F1'),
              //                       ),
              //                       child: Center(
              //                         child: TranslateText(
              //                           styleText: StyleText.h4,
              //                           fontSize: 16,
              //                           text: 'غير نشط',
              //                           colorText: HexColor('707070'),
              //                         ),
              //                       ),
              //                     ),
              //                   )
              //                 ],
              //               )
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              BlocProvider(
                create: (context) => MyadsBloc()..add(GetMyadsEvent()),
                child: BlocBuilder<MyadsBloc, MyAdsState>(
                  builder: (context, state) {
                    return state.when(
                        initState: () => Container(),
                        loading: () => const Center(
                              child: CircularProgressIndicator.adaptive(),
                            ),
                        loaded: (data) {
                          return Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                var item = data.advertisementModel!.data![index];
                                return Container(
                                  margin: const EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 8,
                                        spreadRadius: 1,
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl: item.album ?? '',
                                          fit: BoxFit.fill,
                                          height: 120,
                                          width: 120,
                                          errorWidget: (context, error, stackTrace) {
                                            return const Icon(
                                              Icons.error,
                                              color: Colors.red,
                                            );
                                          },
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  titleText(item.title ?? '', Colors.black, StyleText.h5),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      IconButton(
                                                        padding: const EdgeInsets.all(0),
                                                        style: const ButtonStyle(
                                                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                        ),
                                                        onPressed: () {
                                                          // CategoryProductCubit.get(context)
                                                          //     .selectCategory(subCategory: item.category?.id.toString() ?? '');
                                                          // context.pushNamed(Routes.uploadPhoto, extra: {
                                                          //   'categoryName': data.advertisementModel?.data?[index].category?.id.toString(),
                                                          //   'details': "Cars For Sales",
                                                          //   'data': data.advertisementModel?.data?[index],
                                                          // });
                                                        },
                                                        icon: SvgPicture.asset(
                                                          'edit_profile'.toSvg,
                                                          height: 20,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      IconButton(
                                                        style: const ButtonStyle(
                                                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                        ),
                                                        onPressed: () {
                                                          showBottomSheet(
                                                            context: context,
                                                            builder: (context) =>
                                                                CustomButtonSheetRemove(textToRemove: 'deleteAds', onPressed: () {}),
                                                          );
                                                        },
                                                        icon: SvgPicture.asset(
                                                          'assets/images/svg/icons_ads/deleteIcon.svg',
                                                          height: 20,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              titleText('${item.price.toString().price} JD', HexColor('4C0497'), StyleText.h5),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        const Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
                                                        titleText('${item.visits}', Colors.grey, StyleText.h6),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        const Icon(Icons.date_range, color: Colors.grey),
                                                        Flexible(child: titleText(item.createdAt.toString(), Colors.grey, StyleText.h6)),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12),
                                                        color: HexColor('E6EFD9'),
                                                      ),
                                                      child: Center(
                                                        child: TranslateText(
                                                          styleText: StyleText.h4,
                                                          fontSize: 16,
                                                          text: item.status ?? '',
                                                          colorText: HexColor('7CA73C'),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12),
                                                        color: HexColor('E6EFD9'),
                                                      ),
                                                      child: Center(
                                                        child: TranslateText(
                                                          styleText: StyleText.h4,
                                                          fontSize: 16,
                                                          text: item.active ?? '',
                                                          colorText: HexColor('7CA73C'),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: data.advertisementModel!.data!.length,
                            ),
                          );
                        },
                        error: (message) => Center(
                              child: Text(message),
                            ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget titleText(String title, Color color, StyleText styleText) {
    return TranslateText(
      styleText: styleText,
      colorText: color,
      fontWeight: FontWeight.w500,
      text: title,
    );
  }
}

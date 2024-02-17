import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_state.dart';

class CustomImageFilledWidget extends StatelessWidget {
  const CustomImageFilledWidget({Key? key, required this.image}) : super(key: key);
  final ImageFile image;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAdsCubit, AddAdsState>(builder: (context, state) {
      return Stack(
        children: [
          if (image.path?.isNotEmpty ?? false)
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.file(
                    key: Key(image.toString()),
                    File(image.path ?? ''),
                    fit: BoxFit.cover,
                    height: 150,
                    width: context.width,
                  ),
                ),
              ),
            ),
          Positioned(
            top: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                AddAdsCubit.get(context).removePhoto(index: state.images.indexOf(image));
              },
              child: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: HexColor('#000000').withOpacity(0.3), blurRadius: 10, offset: Offset(5, 8))]),
                  child: SvgPicture.asset(
                    'close'.toSvg,
                    height: 15,
                    width: 15,
                  )),
            ),
          ),
        ],
      );
    });
  }
}

// Positioned(
//                                     top: 0,
//                                     right: 0,
//                                     child: InkWell(
//                                       onTap: () {
//                                         cubit.removePhoto(index: state.images.indexOf(e));
//                                       },
//                                       child: Container(
//                                         padding: const EdgeInsets.all(0),
//                                         decoration: BoxDecoration(),
//                                         child: const Icon(
//                                           Icons.remove_circle_outlined,
//                                           color: Colors.red,
//                                         ),
//                                       ),
//                                     ),
//                                   )

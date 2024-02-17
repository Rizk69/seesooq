// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:newprojectenv/core/utils/app_colors.dart';
// import 'package:newprojectenv/features/search/presentation/cubit/search_cubit.dart';
//
// class RatingWidget extends StatelessWidget {
//   const RatingWidget(
//       {Key? key, required this.cubit, required this.onUpdateRation})
//       : super(key: key);
//   final SearchCubit cubit;
//   final Function(double) onUpdateRation;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider.value(
//         value: cubit,
//         child: RatingBar.builder(
//             initialRating: cubit.state.data?.rating ?? 0.0,
//             minRating: 1,
//             direction: Axis.horizontal,
//             allowHalfRating: true,
//             itemCount: 5,
//             glowColor: Theme.of(context).colorScheme.primary,
//             itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
//             wrapAlignment: WrapAlignment.spaceEvenly,
//             itemBuilder: (context, _) => Icon(
//                   Icons.star,
//                   color: AppColors.starColor,
//                 ),
//             onRatingUpdate: onUpdateRation));
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:newprojectenv/core/common/state/state.dart';
// import 'package:newprojectenv/core/utils/hex_color.dart';
// import 'package:newprojectenv/core/utils/modal_bottom_sheet.dart';
// import 'package:newprojectenv/core/utils/rating_widget.dart';
// import 'package:newprojectenv/core/widget/custom_app_bar.dart';
// import 'package:newprojectenv/core/widget/text_translate_manager.dart';
// import 'package:newprojectenv/features/search/presentation/cubit/search_cubit.dart';
// import 'package:newprojectenv/features/search/presentation/cubit/search_state.dart';
// import 'package:newprojectenv/features/signup/presentation/pages/view/location_page.dart';
// import 'package:newprojectenv/features/welcome/presentation/screen/widget/custom_button_app.dart';
//
// import '../features/address/presentation/cubit/address_cubit.dart';
// import '../features/address/presentation/cubit/address_state.dart';
// import '../features/search/data/models/filter_search_form.dart';
//
// class FilterSearchModel extends StatefulWidget {
//   const FilterSearchModel({Key? key, required this.cubit, required this.form})
//       : super(key: key);
//   final SearchCubit cubit;
//   final SearchFilterForm form;
//
//   @override
//   State<FilterSearchModel> createState() => _FilterSearchModelState();
// }
//
// class _FilterSearchModelState extends State<FilterSearchModel> {
//   SearchFilterForm form = const SearchFilterForm();
//
//   @override
//   void initState() {
//     form = form;
//     widget.cubit.getAllCategories();
//     widget.cubit.getAllBrand();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider.value(
//       value: widget.cubit,
//       child: BlocBuilder<SearchCubit, ViewState<SearchState>>(
//         builder: (context, state) {
//           return Scaffold(
//             appBar: const CustomAppBar(
//               title: 'searchFilter',
//             ),
//             body: SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child:
//                     ListView(physics: const BouncingScrollPhysics(), children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const TranslateText(
//                           text: 'multiService', styleText: StyleText.h5),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: List.generate(
//                               4,
//                               (index) => Row(
//                                     children: [
//                                       InkWell(
//                                         onTap: () {
//                                           widget.cubit
//                                               .updateServiceType(index: index);
//                                           form = form.copyWith(
//                                               filter: _getMultiServiceByName(
//                                                   index));
//                                         },
//                                         child: Container(
//                                           height: 70.h,
//                                           padding: const EdgeInsets.all(15),
//                                           decoration: BoxDecoration(
//                                               color: state.data?.serviceId !=
//                                                       index.toString()
//                                                   ? HexColor('#F6F6F6')
//                                                   : Theme.of(context)
//                                                       .colorScheme
//                                                       .primary
//                                                       .withOpacity(0.1),
//                                               borderRadius:
//                                                   BorderRadius.circular(8)),
//                                           child: Center(
//                                             child: Text(
//                                               items[index],
//                                               style: Theme.of(context)
//                                                   .textTheme
//                                                   .headline5,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         width: 10,
//                                       ),
//                                     ],
//                                   )).toList(),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       if (form.filter == 'products')
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const TranslateText(
//                                 text: 'brand', styleText: StyleText.h5),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               child: Row(
//                                 children: state.data?.brands
//                                         .asMap()
//                                         .map((index, value) => MapEntry(
//                                             index,
//                                             Row(
//                                               children: [
//                                                 InkWell(
//                                                   onTap: () {
//                                                     form = form.copyWith(
//                                                         brandId: value.id);
//                                                     setState(() {});
//                                                   },
//                                                   child: Container(
//                                                     height: 70.h,
//                                                     padding:
//                                                         const EdgeInsets.all(
//                                                             15),
//                                                     decoration: BoxDecoration(
//                                                         color: value.id !=
//                                                                 form.brandId
//                                                             ? HexColor(
//                                                                 '#F6F6F6')
//                                                             : Theme.of(context)
//                                                                 .colorScheme
//                                                                 .primary
//                                                                 .withOpacity(
//                                                                     0.1),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8)),
//                                                     child: Center(
//                                                       child: Text(
//                                                         value.name ?? '',
//                                                         style: Theme.of(context)
//                                                             .textTheme
//                                                             .headline5,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 10,
//                                                 ),
//                                               ],
//                                             )))
//                                         .values
//                                         .toList() ??
//                                     [],
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                           ],
//                         ),
//
//                       const TranslateText(
//                           text: 'category.json', styleText: StyleText.h5),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       if (state.data?.categories.isNotEmpty ?? false)
//                         Center(
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             physics: const BouncingScrollPhysics(),
//                             child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: state.data!.categories
//                                     .asMap()
//                                     .map((index, value) => MapEntry(
//                                           index,
//                                           InkWell(
//                                             onTap: () {
//                                               widget.cubit.selectOneCategory(
//                                                   state
//                                                       .data?.categories[index]);
//                                               if (value.subCategory
//                                                       ?.isNotEmpty ??
//                                                   false) {
//                                                 widget.cubit
//                                                     .selectOneSubCategory(value
//                                                         .subCategory?.first);
//                                               }
//                                               form = form.copyWith(
//                                                   catId: value.id);
//                                             },
//                                             child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   height: 70.h,
//                                                   padding:
//                                                       const EdgeInsets.all(15),
//                                                   decoration: BoxDecoration(
//                                                       color: state
//                                                                   .data
//                                                                   ?.categories[
//                                                                       index]
//                                                                   .id !=
//                                                               state.data
//                                                                   ?.category.json?.id
//                                                           ? HexColor('#F6F6F6')
//                                                           : Theme.of(context)
//                                                               .colorScheme
//                                                               .primary
//                                                               .withOpacity(0.1),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               8)),
//                                                   child: Center(
//                                                       child: Text(
//                                                     state
//                                                             .data
//                                                             ?.categories[index]
//                                                             .name ??
//                                                         '',
//                                                     style: Theme.of(context)
//                                                         .textTheme
//                                                         .headline5,
//                                                   )),
//                                                 ),
//                                                 const SizedBox(
//                                                   width: 10,
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ))
//                                     .values
//                                     .toList()),
//                           ),
//                         ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//
//                       if (state.data?.subCategory != null &&
//                           (state.data?.category.json?.subCategory?.isNotEmpty ??
//                               false))
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const TranslateText(
//                                 text: 'subCategory', styleText: StyleText.h5),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               physics: const BouncingScrollPhysics(),
//                               child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: state.data!.category.json!.subCategory!
//                                       .asMap()
//                                       .map((index, value) => MapEntry(
//                                             index,
//                                             InkWell(
//                                               onTap: () {
//                                                 widget.cubit
//                                                     .selectOneSubCategory(
//                                                         value);
//                                                 form = form.copyWith(
//                                                     catId: value.id);
//                                                 setState(() {});
//                                               },
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     height: 85,
//                                                     padding:
//                                                         const EdgeInsets.all(
//                                                             15),
//                                                     decoration: BoxDecoration(
//                                                         color: value.id !=
//                                                                 state
//                                                                     .data
//                                                                     ?.subCategory!
//                                                                     .id
//                                                             ? HexColor(
//                                                                 '#F6F6F6')
//                                                             : Theme.of(context)
//                                                                 .colorScheme
//                                                                 .primary
//                                                                 .withOpacity(
//                                                                     0.1),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(8)),
//                                                     child: Center(
//                                                         child: Text(
//                                                       value.name ?? '',
//                                                       style: Theme.of(context)
//                                                           .textTheme
//                                                           .headline5,
//                                                     )),
//                                                   ),
//                                                   const SizedBox(
//                                                     width: 10,
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ))
//                                       .values
//                                       .toList()),
//                             ),
//                           ],
//                         ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const TranslateText(
//                               text: 'radius', styleText: StyleText.h5),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Slider(
//                             value: form.radius ?? 0,
//                             onChanged: (value) {
//                               form = form.copyWith(radius: value);
//                               setState(() {
//                                 print(form.radius);
//                               });
//                             },
//                             min: 0,
//                             max: 100,
//                             label: form.radius!.round().toString(),
//                             divisions: 10,
//                           )
//                         ],
//                       ),
//
//                       const SizedBox(
//                         height: 10,
//                       ),
//
//                       BlocBuilder<AddressCubit, ViewState<AddressState>>(
//                         bloc: AddressCubit.get(context)..getAllCountry(),
//                         builder: (context, state) {
//                           var cubit = AddressCubit.get(context);
//                           return state.data != null
//                               ? FilterCountryPickDropDown(
//                                   allCountry: state.data!.allCountry,
//                                   allState: state.data!.allState,
//                                   countryId: state.data!.countryId,
//                                   stateId: state.data!.stateId,
//                                   updateCountryId: ({required value}) {
//                                     cubit.updateCountryId(value: value);
//                                     form = form.copyWith(countryId: value);
//                                   },
//                                   updateStateId: ({required value}) {
//                                     cubit.updateStateId(value: value);
//                                     form = form.copyWith(cityId: value);
//                                   },
//                                 )
//                               : const SizedBox.shrink();
//                         },
//                       ),
//
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       // DropDownItemsApp(item: country),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const TranslateText(
//                           text: 'rating', styleText: StyleText.h5),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       RatingWidget(
//                         cubit: widget.cubit,
//                         onUpdateRation: (rate) {
//                           widget.cubit.updateRating(rating: rate);
//                           form = form.copyWith(rating: rate);
//                         },
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//
//                       CustomButtonApp(
//                         title: 'filter',
//                         onPress: () {
//                           widget.cubit.filterProduct(form: form);
//                           Navigator.of(context).pop();
//                         },
//                       )
//                     ],
//                   )
//                 ]),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   String _getMultiServiceByName(int id) {
//     switch (id) {
//       case 0:
//         return 'products';
//       case 1:
//         return 'business_directories';
//       case 2:
//         return 'service_providers';
//       default:
//         return '';
//     }
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../features/app/presentation/cubit/app_cubit.dart';
//
// class GridListSwitchButton extends StatelessWidget {
//   const GridListSwitchButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AppCubit, AppState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//         return IconButton(onPressed: () {
//           final cubit = AppCubit.get(context);
//           cubit.changeGridView();
//         }, icon: state.isGrid ? const Icon(Icons.view_list) : const Icon(Icons.grid_view));
//       }
//     );
//   }
// }

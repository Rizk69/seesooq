// import 'package:newprojectenv/core/utils/enums.dart';
// import 'package:newprojectenv/core/utils/extensions.dart';
// import 'package:newprojectenv/core/utils/navigator.dart';
// import 'package:newprojectenv/di.dart' as di;
// import 'package:newprojectenv/features/app/presentation/cubit/app_cubit.dart';
// import 'package:newprojectenv/features/profile/presentation/cubit/profile_cubit.dart';
// import 'package:newprojectenv/features/splash/presentation/cubit/lcoale_cubit.dart';
// import 'package:quick_actions/quick_actions.dart';
//
// import '../../features/login/data/models/user_model.dart';
//
// const QuickActions quickActions = QuickActions();
// var context = di.sl<NavigationService>().navigatorKey.currentState!.context;
//
// void setupQuickAction() async {
//   quickActions.initialize((shortcutType) {
//     if (shortcutType == 'service_provider') {
//       ProfileCubit.get(context).selectUserType(
//         AllTypes.serviceProvider,
//         AppCubit.get(context),
//         LocaleCubit.get(context),
//       );
//     }
//
//     if (shortcutType == 'user') {
//       ProfileCubit.get(context).selectUserType(
//         AllTypes.user,
//         AppCubit.get(context),
//         LocaleCubit.get(context),
//       );
//     }
//     if (shortcutType == 'market_place') {
//       ProfileCubit.get(context).selectUserType(
//         AllTypes.marketPlace,
//         AppCubit.get(context),
//         LocaleCubit.get(context),
//       );
//     }
//     if (shortcutType == 'business_directory') {
//       ProfileCubit.get(context).selectUserType(
//         AllTypes.businessDirectory,
//         AppCubit.get(context),
//         LocaleCubit.get(context),
//       );
//     }
//   });
// }
//
// void manageQuickAction(UserApi? user) {
//   quickActions.setShortcutItems(
//     <ShortcutItem>[
//       if (user?.selectedType != AllTypes.user.asString())
//         const ShortcutItem(type: 'user', localizedTitle: 'user', icon: 'user'),
//       if (user?.hasServiceProvider == 1 &&
//           user?.selectedType != AllTypes.serviceProvider.asString())
//         const ShortcutItem(
//             type: 'service_provider',
//             localizedTitle: 'Service Provider',
//             icon: 'service_provider'),
//       if (user?.hasMarketPlace == 1 &&
//           user?.selectedType != AllTypes.marketPlace.asString())
//         const ShortcutItem(
//             type: 'market_place',
//             localizedTitle: 'Market Place',
//             icon: 'market_place'),
//       if (user?.hasBusinessDirectory == 1 &&
//           user?.selectedType != AllTypes.businessDirectory.asString())
//         const ShortcutItem(
//             type: 'business_directory',
//             localizedTitle: 'Business Directory',
//             icon: 'business_directory')
//     ],
//   );
// }

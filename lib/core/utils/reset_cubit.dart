// import 'package:flutter/cupertino.dart';
// import 'package:newprojectenv/features/address/presentation/cubit/address_cubit.dart';
// import 'package:newprojectenv/features/cart/presentation/cubit/cart_cubit.dart';
// import 'package:newprojectenv/features/request_service/presentation/cubit/request_service_cubit.dart';
//
// import '../../features/app/presentation/cubit/app_cubit.dart';
// import '../../features/favorite/presentation/cubit/favorite_cubit.dart';
// import '../../features/notification/presentation/cubit/notification_cubit.dart';
// import '../../features/splash/presentation/cubit/lcoale_cubit.dart';
// import '../../features/wallet/presentation/cubit/wallet_cubit.dart';
// import 'enums.dart';
//
// void logoutResetCubit({required BuildContext context}) {
//   LocaleCubit.get(context).changeTheme(AllTypes.user);
//   AppCubit.get(context).refresh();
// }
//
// void userResetAllCubit({required BuildContext context}) {
//   LocaleCubit.get(context).changeTheme(AllTypes.user);
//   RequestServiceCubit.get(context).initialize(true);
//   FavoriteCubit.get(context).initialize();
//   AddressCubit.get(context).initialize();
//   CartCubit.get(context).getCartUser();
//   NotificationCubit.get(context)
//     ..initialize()
//     ..checkPermissionsNotification()
//     ..updateFcmToken();
// }
//
// void serviceProviderResetAllCubit({required BuildContext context}) {
//   LocaleCubit.get(context).changeTheme(AllTypes.serviceProvider);
//   RequestServiceCubit.get(context).initialize(false);
//   NotificationCubit.get(context)
//     ..initialize()
//     ..checkPermissionsNotification()
//     ..updateFcmToken();
// }
//
// void marketPlaceResetAllCubit({required BuildContext context}) {
//   LocaleCubit.get(context).changeTheme(AllTypes.marketPlace);
//   NotificationCubit.get(context)
//     ..initialize()
//     ..checkPermissionsNotification()
//     ..updateFcmToken();
//   WalletCubit.get(context).initialize();
// }
//
// void businessDirectoryResetAllCubit({required BuildContext context}) {
//   LocaleCubit.get(context).changeTheme(AllTypes.businessDirectory);
//   NotificationCubit.get(context)
//     ..initialize()
//     ..checkPermissionsNotification()
//     ..updateFcmToken();
// }

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/config/theme/dynamic_theme/model/app_theme.dart';
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart';
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_cubit.dart';
import 'package:opensooq/future/follow_section/presentation/bloc/follow_bloc.dart';
import 'package:opensooq/future/follow_section/presentation/bloc/follow_event.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_cubit.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/notification/presentation/cubit/notification_cubit.dart';
import 'package:opensooq/future/setting/presentation/cubit/setting_cubit.dart';
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart';
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart';

import 'di.dart' as di;

GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<LocaleCubit>()..init()),
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => di.sl<NotificationCubit>()..initialize()),
        BlocProvider(create: (context) => di.sl<SettingCubit>()),
        BlocProvider(create: (context) => di.sl<LoginCubit>()),
        BlocProvider(create: (context) => di.sl<CategoryProductCubit>()),
        BlocProvider(create: (context) => di.sl<CategoryCubit>()),
        BlocProvider(create: (context) => di.sl<SignUpCubit>()),
        BlocProvider(create: (context) => FavoriteCubit()..getFav()),
        BlocProvider(create: (context) => StoryUserCubit()),
        BlocProvider(
            create: (context) => FollowBloc()
              ..add(const FollowEvent.getFollowers())
              ..add(const FollowEvent.getFollowing())),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          locale: Locale('en'),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          scaffoldMessengerKey: scaffoldMessengerKey,
          darkTheme: ThemeManager.createTheme(AppThemeDark()),
          themeMode: state.theme == 'light' ? ThemeMode.light : ThemeMode.dark,
          theme: ThemeManager.createTheme(AppThemeLight()),
          builder: (context, child) {
            return FlutterEasyLoading(child: child);
          },
          routerConfig: router,
        );
      }),
    );
  }
}

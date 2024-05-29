// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;
import 'package:opensooq/core/api/dio_interceptor.dart' as _i13;
import 'package:opensooq/core/network/api/blogs_api.dart' as _i37;
import 'package:opensooq/core/network/api/category_api.dart' as _i36;
import 'package:opensooq/core/network/api/fav_api.dart' as _i32;
import 'package:opensooq/core/network/api/follow_api.dart' as _i23;
import 'package:opensooq/core/network/api/home_user_api.dart' as _i24;
import 'package:opensooq/core/network/api/location_api.dart' as _i29;
import 'package:opensooq/core/network/api/login_api.dart' as _i28;
import 'package:opensooq/core/network/api/my_ads_api.dart' as _i31;
import 'package:opensooq/core/network/api/notification_api.dart' as _i33;
import 'package:opensooq/core/network/api/packages_api.dart' as _i27;
import 'package:opensooq/core/network/api/payment_api.dart' as _i35;
import 'package:opensooq/core/network/api/reels_api.dart' as _i25;
import 'package:opensooq/core/network/api/setting_api.dart' as _i26;
import 'package:opensooq/core/network/api/signup_api.dart' as _i30;
import 'package:opensooq/core/network/api/wallet_api.dart' as _i34;
import 'package:opensooq/core/network/dio_factory.dart' as _i98;
import 'package:opensooq/core/network/mock_interceptor.dart' as _i6;
import 'package:opensooq/core/network/network_info.dart' as _i9;
import 'package:opensooq/core/utils/cache_helper.dart' as _i10;
import 'package:opensooq/core/utils/navigator.dart' as _i7;
import 'package:opensooq/di.dart' as _i97;
import 'package:opensooq/future/blogs/data/data_sorces/blogs_remote_data_sorces.dart'
    as _i51;
import 'package:opensooq/future/blogs/data/repositories/blogs_repository.dart'
    as _i79;
import 'package:opensooq/future/category/data/data_sources/category_remote_data_source.dart'
    as _i55;
import 'package:opensooq/future/category/data/repositories/category_repository.dart'
    as _i72;
import 'package:opensooq/future/category/domain/filter_usecase.dart' as _i81;
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart'
    as _i94;
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart'
    as _i76;
import 'package:opensooq/future/category_product/data/data_sources/category_remote_data_source.dart'
    as _i39;
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart'
    as _i67;
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart'
    as _i95;
import 'package:opensooq/future/favorite/data/data_sorces/fav_remot_data_sorces.dart'
    as _i41;
import 'package:opensooq/future/favorite/data/repositories/fav_repository.dart'
    as _i52;
import 'package:opensooq/future/favorite/domain/repositories/fav_repo_impl.dart'
    as _i53;
import 'package:opensooq/future/favorite/domain/use_cases/add_fav_usecase.dart'
    as _i86;
import 'package:opensooq/future/favorite/domain/use_cases/delete_fav_reel_usecase.dart'
    as _i87;
import 'package:opensooq/future/favorite/domain/use_cases/delete_fav_usecase.dart'
    as _i90;
import 'package:opensooq/future/favorite/domain/use_cases/fav_reels_usecase.dart'
    as _i89;
import 'package:opensooq/future/favorite/domain/use_cases/fav_usecase.dart'
    as _i88;
import 'package:opensooq/future/follow_section/data/data_source/follow_remot_data_sorces.dart'
    as _i38;
import 'package:opensooq/future/follow_section/data/repositories/follow_repository.dart'
    as _i45;
import 'package:opensooq/future/home/data/data_sources/home_user_local_data_source.dart'
    as _i11;
import 'package:opensooq/future/home/data/data_sources/home_user_remote_data_source.dart'
    as _i62;
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart'
    as _i77;
import 'package:opensooq/future/location/data/data_sources/location_remote_data_source.dart'
    as _i69;
import 'package:opensooq/future/location/data/repositories/location_repo_impl.dart'
    as _i78;
import 'package:opensooq/future/login/data/datasources/login_local_data_source.dart'
    as _i12;
import 'package:opensooq/future/login/data/datasources/login_remote_data_source.dart'
    as _i46;
import 'package:opensooq/future/login/data/repositories/login_repo_impl.dart'
    as _i49;
import 'package:opensooq/future/login/domain/repositories/login_repo.dart'
    as _i48;
import 'package:opensooq/future/login/domain/usecase/change_password.dart'
    as _i65;
import 'package:opensooq/future/login/domain/usecase/forget_password.dart'
    as _i64;
import 'package:opensooq/future/login/domain/usecase/get_user_local.dart'
    as _i63;
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart'
    as _i66;
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart'
    as _i80;
import 'package:opensooq/future/myads/data/data_sorces/my_ads_remot_data_sorces.dart'
    as _i59;
import 'package:opensooq/future/myads/data/repositories/my_ads_repository.dart'
    as _i68;
import 'package:opensooq/future/notification/data/datasources/notification_remote_data_source.dart'
    as _i40;
import 'package:opensooq/future/notification/data/repositories/notification_repository_impl.dart'
    as _i43;
import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart'
    as _i42;
import 'package:opensooq/future/notification/domain/usecases/get_notification_usecase.dart'
    as _i82;
import 'package:opensooq/future/notification/presentation/cubit/notification_cubit.dart'
    as _i93;
import 'package:opensooq/future/packages/data/data_sources/packages_remote_data_source.dart'
    as _i44;
import 'package:opensooq/future/packages/data/repositories/packages_repo_impl.dart'
    as _i85;
import 'package:opensooq/future/packages/domain/repositories/packages_repo.dart'
    as _i84;
import 'package:opensooq/future/packages/domain/use_cases/get_package_usecase.dart'
    as _i96;
import 'package:opensooq/future/payment_gateway/data/data_sources/payment_gateway_local_data_source.dart'
    as _i15;
import 'package:opensooq/future/payment_gateway/data/data_sources/payment_gateway_remote_data_source.dart'
    as _i57;
import 'package:opensooq/future/payment_gateway/data/repositories/payment_repository.dart'
    as _i58;
import 'package:opensooq/future/reels/data/data_source/reels_remote_data_source.dart'
    as _i54;
import 'package:opensooq/future/reels/data/reels_repository/reels_repository.dart'
    as _i83;
import 'package:opensooq/future/setting/data/data_sources/setting_local_data_source.dart'
    as _i14;
import 'package:opensooq/future/setting/data/data_sources/setting_remote_data_source.dart'
    as _i61;
import 'package:opensooq/future/setting/data/repositories/setting_repository.dart'
    as _i92;
import 'package:opensooq/future/signup/data/data_sources/signup_remote_data_source.dart'
    as _i56;
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart'
    as _i60;
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart'
    as _i91;
import 'package:opensooq/future/splash/data/datasources/lang_local_data_sourece.dart'
    as _i16;
import 'package:opensooq/future/splash/data/repositories/locale_repository_impl.dart'
    as _i18;
import 'package:opensooq/future/splash/domain/repositories/locale_repository.dart'
    as _i17;
import 'package:opensooq/future/splash/domain/usecases/change_lang.dart'
    as _i22;
import 'package:opensooq/future/splash/domain/usecases/change_theme.dart'
    as _i20;
import 'package:opensooq/future/splash/domain/usecases/get_saved_lang.dart'
    as _i21;
import 'package:opensooq/future/splash/domain/usecases/get_theme_usecase.dart'
    as _i19;
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart'
    as _i50;
import 'package:opensooq/future/wallet/data/data_sources/wallet_remote_data_source.dart'
    as _i47;
import 'package:opensooq/future/wallet/data/repositories/wallet_repo_impl.dart'
    as _i71;
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart'
    as _i70;
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart'
    as _i73;
import 'package:opensooq/future/wallet/domain/use_cases/store_payment_wallet_usecase.dart'
    as _i74;
import 'package:opensooq/future/wallet/domain/use_cases/transactions_payment_usecase.dart'
    as _i75;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    final dioFactory = _$DioFactory();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.lazySingleton<_i5.LogInterceptor>(
        () => registerModule.getLogInterceptor());
    gh.lazySingleton<_i6.MockInterceptor>(
        () => registerModule.getMockInterceptor());
    gh.lazySingleton<_i7.NavigationService>(
        () => registerModule.getNavigationService());
    gh.lazySingleton<_i8.InternetConnectionChecker>(
        () => registerModule.getInternetConnectionChecker());
    gh.lazySingleton<_i9.NetworkInfo>(
        () => _i9.NetworkInfoImpl(gh<_i8.InternetConnectionChecker>()));
    gh.factory<_i10.CacheHelper>(
        () => _i10.CacheHelper(gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i11.HomeUserLocalDataSource>(
        () => _i11.HomeUserLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i12.LoginLocalDataSource>(
        () => _i12.LoginLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.factory<_i13.CustomInterceptors>(
        () => _i13.CustomInterceptors(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i14.SettingLocalDataSource>(
        () => _i14.SettingLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i15.PaymentRemoteDataSource>(
        () => _i15.PaymentRemoteDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i16.LangLocalDataSource>(() =>
        _i16.LangLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i5.Dio>(() => dioFactory.getDio(
          gh<_i13.CustomInterceptors>(),
          gh<_i5.LogInterceptor>(),
          gh<_i6.MockInterceptor>(),
        ));
    gh.lazySingleton<_i17.LocaleRepository>(() => _i18.LocaleRepositoryImpl(
        langLocalDataSource: gh<_i16.LangLocalDataSource>()));
    gh.lazySingleton<_i19.GetThemeUseCase>(() =>
        _i19.GetThemeUseCase(langRepository: gh<_i17.LocaleRepository>()));
    gh.lazySingleton<_i20.ChangeThemeUseCase>(() =>
        _i20.ChangeThemeUseCase(langRepository: gh<_i17.LocaleRepository>()));
    gh.lazySingleton<_i21.GetSavedLangUseCase>(() =>
        _i21.GetSavedLangUseCase(langRepository: gh<_i17.LocaleRepository>()));
    gh.lazySingleton<_i22.ChangeLangUseCase>(() =>
        _i22.ChangeLangUseCase(langRepository: gh<_i17.LocaleRepository>()));
    gh.factory<_i23.FollowApi>(() => _i23.FollowApi(gh<_i5.Dio>()));
    gh.factory<_i24.HomeUserApi>(() => _i24.HomeUserApi(gh<_i5.Dio>()));
    gh.factory<_i25.ReelsApi>(() => _i25.ReelsApi(gh<_i5.Dio>()));
    gh.factory<_i26.SettingApi>(() => _i26.SettingApi(gh<_i5.Dio>()));
    gh.factory<_i27.PackagesApi>(() => _i27.PackagesApi(gh<_i5.Dio>()));
    gh.factory<_i28.LoginApi>(() => _i28.LoginApi(gh<_i5.Dio>()));
    gh.factory<_i29.LocationApi>(() => _i29.LocationApi(gh<_i5.Dio>()));
    gh.factory<_i30.SignupApi>(() => _i30.SignupApi(gh<_i5.Dio>()));
    gh.factory<_i31.MyAdsApi>(() => _i31.MyAdsApi(gh<_i5.Dio>()));
    gh.factory<_i32.FavApi>(() => _i32.FavApi(gh<_i5.Dio>()));
    gh.factory<_i33.NotificationApi>(() => _i33.NotificationApi(gh<_i5.Dio>()));
    gh.factory<_i34.WalletApi>(() => _i34.WalletApi(gh<_i5.Dio>()));
    gh.factory<_i35.PaymentApi>(() => _i35.PaymentApi(gh<_i5.Dio>()));
    gh.factory<_i36.CategoryApi>(() => _i36.CategoryApi(gh<_i5.Dio>()));
    gh.factory<_i37.BlogsApi>(() => _i37.BlogsApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i38.FollowRemoteDataSource>(
        () => _i38.FollowRemoteDataSourceImpl(api: gh<_i23.FollowApi>()));
    gh.lazySingleton<_i39.CategoryRemoteDataSource>(
        () => _i39.CategoryRemoteDataSourceImpl(gh<_i36.CategoryApi>()));
    gh.factory<_i40.NotificationRemoteDataSource>(
        () => _i40.GetUserNotificationRemoteImpl(gh<_i33.NotificationApi>()));
    gh.lazySingleton<_i41.FavRemoteDataSource>(
        () => _i41.FavRemoteDataSourceImpl(api: gh<_i32.FavApi>()));
    gh.factory<_i42.NotificationRepository>(
        () => _i43.NotificationRepositoryImpl(
              networkInfo: gh<_i9.NetworkInfo>(),
              getUserRemoteDataSource: gh<_i40.NotificationRemoteDataSource>(),
            ));
    gh.lazySingleton<_i44.PackagesRemoteDataSource>(() =>
        _i44.PackagesRemoteDataSourceImpl(packagesApi: gh<_i27.PackagesApi>()));
    gh.lazySingleton<_i45.FollowRepository>(
        () => _i45.FollowRepositoryImpl(gh<_i38.FollowRemoteDataSource>()));
    gh.lazySingleton<_i46.LoginRemoteDataSource>(
        () => _i46.LoginRemoteDataSourceImpl(gh<_i28.LoginApi>()));
    gh.lazySingleton<_i47.WalletRemoteDataSource>(
        () => _i47.WalletRemoteDataSourceImpl(walletApi: gh<_i34.WalletApi>()));
    gh.lazySingleton<_i48.LoginRepository>(() => _i49.LoginRepoImpl(
          gh<_i46.LoginRemoteDataSource>(),
          gh<_i12.LoginLocalDataSource>(),
        ));
    gh.factory<_i50.LocaleCubit>(() => _i50.LocaleCubit(
          getSavedLangUseCase: gh<_i21.GetSavedLangUseCase>(),
          changeLangUseCase: gh<_i22.ChangeLangUseCase>(),
          changeThemeUseCase: gh<_i20.ChangeThemeUseCase>(),
          getThemeUseCase: gh<_i19.GetThemeUseCase>(),
        ));
    gh.lazySingleton<_i51.BlogsRemoteDataSource>(
        () => _i51.BlogsRemoteDataSourceImpl(gh<_i37.BlogsApi>()));
    gh.lazySingleton<_i52.FavRepository>(
        () => _i53.FavRepositoryImpl(gh<_i41.FavRemoteDataSource>()));
    gh.lazySingleton<_i54.ReelsRemoteDataSource>(
        () => _i54.ReelsRemoteDataSourceImpl(gh<_i25.ReelsApi>()));
    gh.lazySingleton<_i55.CategoryRemoteDataSource>(
        () => _i55.CategoryRemoteDataSourceImpl(gh<_i36.CategoryApi>()));
    gh.lazySingleton<_i56.SignUpRemoteDataSource>(
        () => _i56.SignUpRemoteDataSourceImpl(
              gh<_i10.CacheHelper>(),
              gh<_i30.SignupApi>(),
            ));
    gh.lazySingleton<_i57.PaymentRemoteDataSource>(
        () => _i57.PaymentRemoteDataSourceImpl(gh<_i35.PaymentApi>()));
    gh.lazySingleton<_i58.PaymentRepository>(
        () => _i58.PaymentRepositoryImpl(gh<_i57.PaymentRemoteDataSource>()));
    gh.lazySingleton<_i59.MyAdsRemoteDataSource>(
        () => _i59.MyAdsRemoteDataSourceImpl(gh<_i31.MyAdsApi>()));
    gh.lazySingleton<_i60.SignUpRepository>(
        () => _i60.SignUpRepositoryImpl(gh<_i56.SignUpRemoteDataSource>()));
    gh.lazySingleton<_i61.SettingRemoteDataSource>(
        () => _i61.SettingRemoteDataSourceImpl(gh<_i26.SettingApi>()));
    gh.lazySingleton<_i62.HomeUserRemoteDataSource>(
        () => _i62.HomeUserRemoteDataSourceImpl(gh<_i24.HomeUserApi>()));
    gh.lazySingleton<_i63.GetUserLocalUseCase>(() =>
        _i63.GetUserLocalUseCase(loginRepository: gh<_i48.LoginRepository>()));
    gh.lazySingleton<_i64.ForGetPasswordUserUseCase>(() =>
        _i64.ForGetPasswordUserUseCase(
            loginRepository: gh<_i48.LoginRepository>()));
    gh.lazySingleton<_i65.ChangePasswordUserUseCase>(() =>
        _i65.ChangePasswordUserUseCase(
            loginRepository: gh<_i48.LoginRepository>()));
    gh.lazySingleton<_i66.VerifyForGetPasswordUserUseCase>(() =>
        _i66.VerifyForGetPasswordUserUseCase(
            loginRepository: gh<_i48.LoginRepository>()));
    gh.lazySingleton<_i67.CategoryRepo>(() => _i67.CategoryRepoImpl(
          gh<_i9.NetworkInfo>(),
          gh<_i39.CategoryRemoteDataSource>(),
        ));
    gh.lazySingleton<_i68.MyAdsRepository>(
        () => _i68.MyAdsRepositoryImpl(gh<_i59.MyAdsRemoteDataSource>()));
    gh.factory<_i69.LocationRemoteDataSource>(
        () => _i69.LocationRemoteImpl(gh<_i29.LocationApi>()));
    gh.lazySingleton<_i70.WalletRepository>(() => _i71.WalletRepositoryImpl(
        walletRemoteDataSource: gh<_i47.WalletRemoteDataSource>()));
    gh.lazySingleton<_i72.CategoryRepository>(
        () => _i72.CategoryRepositoryImpl(gh<_i55.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i73.GetWalletUseCase>(() =>
        _i73.GetWalletUseCase(walletRepository: gh<_i70.WalletRepository>()));
    gh.lazySingleton<_i74.StorePaymentWalletUseCase>(() =>
        _i74.StorePaymentWalletUseCase(
            walletRepository: gh<_i70.WalletRepository>()));
    gh.lazySingleton<_i75.TransactionsPaymentUseCase>(() =>
        _i75.TransactionsPaymentUseCase(
            walletRepository: gh<_i70.WalletRepository>()));
    gh.lazySingleton<_i76.DetailsCategoryCubit>(() => _i76.DetailsCategoryCubit(
        categoryRepository: gh<_i72.CategoryRepository>()));
    gh.lazySingleton<_i77.HomeUserRepo>(() => _i77.HomeUserRepoImpl(
          gh<_i9.NetworkInfo>(),
          gh<_i62.HomeUserRemoteDataSource>(),
          gh<_i11.HomeUserLocalDataSource>(),
        ));
    gh.factory<_i78.LocationRepo>(
        () => _i78.LocationRepoImpl(gh<_i69.LocationRemoteDataSource>()));
    gh.lazySingleton<_i79.BlogsRepository>(
        () => _i79.BlogsRepositoryImpl(gh<_i51.BlogsRemoteDataSource>()));
    gh.lazySingleton<_i80.LoginCubit>(() => _i80.LoginCubit(
          gh<_i48.LoginRepository>(),
          gh<_i64.ForGetPasswordUserUseCase>(),
          gh<_i65.ChangePasswordUserUseCase>(),
        ));
    gh.lazySingleton<_i81.FilterUseCase>(
        () => _i81.FilterUseCase(gh<_i67.CategoryRepo>()));
    gh.factory<_i82.GetUserNotificationsUseCase>(() =>
        _i82.GetUserNotificationsUseCase(
            notificationRepository: gh<_i42.NotificationRepository>()));
    gh.lazySingleton<_i83.ReelsRepository>(
        () => _i83.ReelsRepositoryImpl(gh<_i54.ReelsRemoteDataSource>()));
    gh.lazySingleton<_i84.PackagesRepository>(() => _i85.PackagesRepositoryImpl(
        packagesRemoteDataSource: gh<_i44.PackagesRemoteDataSource>()));
    gh.lazySingleton<_i86.AddFavUseCase>(
        () => _i86.AddFavUseCase(gh<_i52.FavRepository>()));
    gh.lazySingleton<_i87.DeleteFavReelUseCase>(
        () => _i87.DeleteFavReelUseCase(gh<_i52.FavRepository>()));
    gh.lazySingleton<_i88.FavUseCase>(
        () => _i88.FavUseCase(gh<_i52.FavRepository>()));
    gh.lazySingleton<_i89.FavReelsUseCase>(
        () => _i89.FavReelsUseCase(gh<_i52.FavRepository>()));
    gh.lazySingleton<_i90.DeleteFavUseCase>(
        () => _i90.DeleteFavUseCase(gh<_i52.FavRepository>()));
    gh.lazySingleton<_i91.SignUpCubit>(
        () => _i91.SignUpCubit(gh<_i60.SignUpRepository>()));
    gh.lazySingleton<_i92.SettingRepository>(
        () => _i92.SettingRepositoryImpl(gh<_i61.SettingRemoteDataSource>()));
    gh.factory<_i93.NotificationCubit>(() => _i93.NotificationCubit(
        getUserNotificationsUseCase: gh<_i82.GetUserNotificationsUseCase>()));
    gh.factory<_i94.CategoryCubit>(
        () => _i94.CategoryCubit(categoryRepo: gh<_i67.CategoryRepo>()));
    gh.factory<_i95.CategoryProductCubit>(
        () => _i95.CategoryProductCubit(categoryRepo: gh<_i67.CategoryRepo>()));
    gh.lazySingleton<_i96.GetPackagesUseCase>(() => _i96.GetPackagesUseCase(
        packagesRepository: gh<_i84.PackagesRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i97.RegisterModule {}

class _$DioFactory extends _i98.DioFactory {}

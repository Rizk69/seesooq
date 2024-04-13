// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:opensooq/core/api/dio_interceptor.dart' as _i11;
import 'package:opensooq/core/network/api/blogs_api.dart' as _i65;
import 'package:opensooq/core/network/api/category_api.dart' as _i68;
import 'package:opensooq/core/network/api/fav_api.dart' as _i12;
import 'package:opensooq/core/network/api/follow_api.dart' as _i17;
import 'package:opensooq/core/network/api/home_user_api.dart' as _i20;
import 'package:opensooq/core/network/api/location_api.dart' as _i26;
import 'package:opensooq/core/network/api/login_api.dart' as _i29;
import 'package:opensooq/core/network/api/my_ads_api.dart' as _i34;
import 'package:opensooq/core/network/api/notification_api.dart' as _i37;
import 'package:opensooq/core/network/api/packages_api.dart' as _i41;
import 'package:opensooq/core/network/api/payment_api.dart' as _i45;
import 'package:opensooq/core/network/api/reels_api.dart' as _i49;
import 'package:opensooq/core/network/api/setting_api.dart' as _i52;
import 'package:opensooq/core/network/api/signup_api.dart' as _i58;
import 'package:opensooq/core/network/api/wallet_api.dart' as _i60;
import 'package:opensooq/core/network/dio_factory.dart' as _i99;
import 'package:opensooq/core/network/mock_interceptor.dart' as _i6;
import 'package:opensooq/core/network/network_info.dart' as _i8;
import 'package:opensooq/core/utils/cache_helper.dart' as _i10;
import 'package:opensooq/core/utils/navigator.dart' as _i7;
import 'package:opensooq/di.dart' as _i98;
import 'package:opensooq/future/blogs/data/data_sorces/blogs_remote_data_sorces.dart'
    as _i66;
import 'package:opensooq/future/blogs/data/repositories/blogs_repository.dart'
    as _i67;
import 'package:opensooq/future/category/data/data_sources/category_remote_data_source.dart'
    as _i70;
import 'package:opensooq/future/category/data/repositories/category_repository.dart'
    as _i72;
import 'package:opensooq/future/category/domain/filter_usecase.dart' as _i78;
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart'
    as _i95;
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart'
    as _i77;
import 'package:opensooq/future/category_product/data/data_sources/category_remote_data_source.dart'
    as _i69;
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart'
    as _i71;
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart'
    as _i96;
import 'package:opensooq/future/favorite/data/data_sorces/fav_remot_data_sorces.dart'
    as _i13;
import 'package:opensooq/future/favorite/data/repositories/fav_repository.dart'
    as _i14;
import 'package:opensooq/future/favorite/domain/repositories/fav_repo_impl.dart'
    as _i15;
import 'package:opensooq/future/favorite/domain/use_cases/add_fav_usecase.dart'
    as _i64;
import 'package:opensooq/future/favorite/domain/use_cases/delete_fav_usecase.dart'
    as _i76;
import 'package:opensooq/future/favorite/domain/use_cases/fav_usecase.dart'
    as _i16;
import 'package:opensooq/future/follow_section/data/data_source/follow_remot_data_sorces.dart'
    as _i18;
import 'package:opensooq/future/follow_section/data/repositories/follow_repository.dart'
    as _i19;
import 'package:opensooq/future/home/data/data_sources/home_user_remote_data_source.dart'
    as _i21;
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart'
    as _i22;
import 'package:opensooq/future/location/data/data_sources/location_remote_data_source.dart'
    as _i27;
import 'package:opensooq/future/location/data/repositories/location_repo_impl.dart'
    as _i28;
import 'package:opensooq/future/login/data/datasources/login_local_data_source.dart'
    as _i30;
import 'package:opensooq/future/login/data/datasources/login_remote_data_source.dart'
    as _i31;
import 'package:opensooq/future/login/data/repositories/login_repo_impl.dart'
    as _i33;
import 'package:opensooq/future/login/domain/repositories/login_repo.dart'
    as _i32;
import 'package:opensooq/future/login/domain/usecase/change_password.dart'
    as _i74;
import 'package:opensooq/future/login/domain/usecase/forget_password.dart'
    as _i79;
import 'package:opensooq/future/login/domain/usecase/get_user_local.dart'
    as _i84;
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart'
    as _i59;
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart'
    as _i88;
import 'package:opensooq/future/myads/data/data_sorces/my_ads_remot_data_sorces.dart'
    as _i35;
import 'package:opensooq/future/myads/data/repositories/my_ads_repository.dart'
    as _i36;
import 'package:opensooq/future/notification/data/datasources/notification_remote_data_source.dart'
    as _i38;
import 'package:opensooq/future/notification/data/repositories/notification_repository_impl.dart'
    as _i40;
import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart'
    as _i39;
import 'package:opensooq/future/notification/domain/usecases/get_notification_usecase.dart'
    as _i85;
import 'package:opensooq/future/notification/presentation/cubit/notification_cubit.dart'
    as _i89;
import 'package:opensooq/future/packages/data/data_sources/packages_remote_data_source.dart'
    as _i42;
import 'package:opensooq/future/packages/data/repositories/packages_repo_impl.dart'
    as _i44;
import 'package:opensooq/future/packages/domain/repositories/packages_repo.dart'
    as _i43;
import 'package:opensooq/future/packages/domain/use_cases/get_package_usecase.dart'
    as _i81;
import 'package:opensooq/future/payment_gateway/data/data_sources/payment_gateway_local_data_source.dart'
    as _i46;
import 'package:opensooq/future/payment_gateway/data/data_sources/payment_gateway_remote_data_source.dart'
    as _i47;
import 'package:opensooq/future/payment_gateway/data/repositories/payment_repository.dart'
    as _i48;
import 'package:opensooq/future/reels/data/data_source/reels_remote_data_source.dart'
    as _i50;
import 'package:opensooq/future/reels/data/reels_repository/reels_repository.dart'
    as _i51;
import 'package:opensooq/future/setting/data/local/data_sources/setting_local_data_source.dart'
    as _i53;
import 'package:opensooq/future/setting/data/repositories/setting_repository_impl.dart'
    as _i57;
import 'package:opensooq/future/setting/domain/repositories/setting_repository.dart'
    as _i56;
import 'package:opensooq/future/setting/domain/use_cases/get_fingerprint_usecase.dart'
    as _i80;
import 'package:opensooq/future/setting/domain/use_cases/save_fingerprint_usecase.dart'
    as _i90;
import 'package:opensooq/future/setting/presentation/cubit/setting_cubit.dart'
    as _i91;
import 'package:opensooq/future/setting1/data/data_sources/setting_remote_data_source.dart'
    as _i54;
import 'package:opensooq/future/setting1/data/repositories/setting_repository.dart'
    as _i55;
import 'package:opensooq/future/signup/data/data_sources/signup_remote_data_source.dart'
    as _i92;
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart'
    as _i93;
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart'
    as _i97;
import 'package:opensooq/future/splash/data/datasources/lang_local_data_sourece.dart'
    as _i23;
import 'package:opensooq/future/splash/data/repositories/locale_repository_impl.dart'
    as _i25;
import 'package:opensooq/future/splash/domain/repositories/locale_repository.dart'
    as _i24;
import 'package:opensooq/future/splash/domain/usecases/change_lang.dart'
    as _i73;
import 'package:opensooq/future/splash/domain/usecases/change_theme.dart'
    as _i75;
import 'package:opensooq/future/splash/domain/usecases/get_saved_lang.dart'
    as _i82;
import 'package:opensooq/future/splash/domain/usecases/get_theme_usecase.dart'
    as _i83;
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart'
    as _i87;
import 'package:opensooq/future/wallet/data/data_sources/wallet_remote_data_source.dart'
    as _i61;
import 'package:opensooq/future/wallet/data/repositories/wallet_repo_impl.dart'
    as _i63;
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart'
    as _i62;
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart'
    as _i86;
import 'package:opensooq/future/wallet/domain/use_cases/store_payment_wallet_usecase.dart'
    as _i94;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

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
    gh.lazySingleton<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.lazySingleton<_i4.InternetConnectionChecker>(
        () => registerModule.getInternetConnectionChecker());
    gh.lazySingleton<_i5.LogInterceptor>(
        () => registerModule.getLogInterceptor());
    gh.lazySingleton<_i6.MockInterceptor>(
        () => registerModule.getMockInterceptor());
    gh.lazySingleton<_i7.NavigationService>(
        () => registerModule.getNavigationService());
    gh.lazySingleton<_i8.NetworkInfo>(
        () => _i8.NetworkInfoImpl(gh<_i4.InternetConnectionChecker>()));
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i10.CacheHelper>(
        () => _i10.CacheHelper(gh<_i9.SharedPreferences>()));
    gh.factory<_i11.CustomInterceptors>(
        () => _i11.CustomInterceptors(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i5.Dio>(() => dioFactory.getDio(
          gh<_i11.CustomInterceptors>(),
          gh<_i5.LogInterceptor>(),
          gh<_i6.MockInterceptor>(),
        ));
    gh.factory<_i12.FavApi>(() => _i12.FavApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i13.FavRemoteDataSource>(
        () => _i13.FavRemoteDataSourceImpl(api: gh<_i12.FavApi>()));
    gh.lazySingleton<_i14.FavRepository>(
        () => _i15.FavRepositoryImpl(gh<_i13.FavRemoteDataSource>()));
    gh.lazySingleton<_i16.FavUseCase>(
        () => _i16.FavUseCase(gh<_i14.FavRepository>()));
    gh.factory<_i17.FollowApi>(() => _i17.FollowApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i18.FollowRemoteDataSource>(
        () => _i18.FollowRemoteDataSourceImpl(api: gh<_i17.FollowApi>()));
    gh.lazySingleton<_i19.FollowRepository>(
        () => _i19.FollowRepositoryImpl(gh<_i18.FollowRemoteDataSource>()));
    gh.factory<_i20.HomeUserApi>(() => _i20.HomeUserApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i21.HomeUserRemoteDataSource>(
        () => _i21.HomeUserRemoteDataSourceImpl(gh<_i20.HomeUserApi>()));
    gh.lazySingleton<_i22.HomeUserRepo>(() => _i22.HomeUserRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i21.HomeUserRemoteDataSource>(),
        ));
    gh.lazySingleton<_i23.LangLocalDataSource>(() =>
        _i23.LangLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i24.LocaleRepository>(() => _i25.LocaleRepositoryImpl(
        langLocalDataSource: gh<_i23.LangLocalDataSource>()));
    gh.factory<_i26.LocationApi>(() => _i26.LocationApi(gh<_i5.Dio>()));
    gh.factory<_i27.LocationRemoteDataSource>(
        () => _i27.LocationRemoteImpl(gh<_i26.LocationApi>()));
    gh.factory<_i28.LocationRepo>(
        () => _i28.LocationRepoImpl(gh<_i27.LocationRemoteDataSource>()));
    gh.factory<_i29.LoginApi>(() => _i29.LoginApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i30.LoginLocalDataSource>(
        () => _i30.LoginLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i31.LoginRemoteDataSource>(
        () => _i31.LoginRemoteDataSourceImpl(gh<_i29.LoginApi>()));
    gh.lazySingleton<_i32.LoginRepository>(() => _i33.LoginRepoImpl(
          gh<_i31.LoginRemoteDataSource>(),
          gh<_i30.LoginLocalDataSource>(),
        ));
    gh.factory<_i34.MyAdsApi>(() => _i34.MyAdsApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i35.MyAdsRemoteDataSource>(
        () => _i35.MyAdsRemoteDataSourceImpl(gh<_i34.MyAdsApi>()));
    gh.lazySingleton<_i36.MyAdsRepository>(
        () => _i36.MyAdsRepositoryImpl(gh<_i35.MyAdsRemoteDataSource>()));
    gh.factory<_i37.NotificationApi>(() => _i37.NotificationApi(gh<_i5.Dio>()));
    gh.factory<_i38.NotificationRemoteDataSource>(
        () => _i38.GetUserNotificationRemoteImpl(gh<_i37.NotificationApi>()));
    gh.factory<_i39.NotificationRepository>(
        () => _i40.NotificationRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserRemoteDataSource: gh<_i38.NotificationRemoteDataSource>(),
            ));
    gh.factory<_i41.PackagesApi>(() => _i41.PackagesApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i42.PackagesRemoteDataSource>(() =>
        _i42.PackagesRemoteDataSourceImpl(packagesApi: gh<_i41.PackagesApi>()));
    gh.lazySingleton<_i43.PackagesRepository>(() => _i44.PackagesRepositoryImpl(
        packagesRemoteDataSource: gh<_i42.PackagesRemoteDataSource>()));
    gh.factory<_i45.PaymentApi>(() => _i45.PaymentApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i46.PaymentRemoteDataSource>(
        () => _i46.PaymentRemoteDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i47.PaymentRemoteDataSource>(
        () => _i47.PaymentRemoteDataSourceImpl(gh<_i45.PaymentApi>()));
    gh.lazySingleton<_i48.PaymentRepository>(
        () => _i48.PaymentRepositoryImpl(gh<_i47.PaymentRemoteDataSource>()));
    gh.factory<_i49.ReelsApi>(() => _i49.ReelsApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i50.ReelsRemoteDataSource>(
        () => _i50.ReelsRemoteDataSourceImpl(gh<_i49.ReelsApi>()));
    gh.lazySingleton<_i51.ReelsRepository>(
        () => _i51.ReelsRepositoryImpl(gh<_i50.ReelsRemoteDataSource>()));
    gh.factory<_i52.SettingApi>(() => _i52.SettingApi(gh<_i5.Dio>()));
    gh.factory<_i53.SettingLocalDataSource>(() =>
        _i53.SettingLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i54.SettingRemoteDataSource>(
        () => _i54.SettingRemoteDataSourceImpl(gh<_i52.SettingApi>()));
    gh.lazySingleton<_i55.SettingRepository>(
        () => _i55.SettingRepositoryImpl(gh<_i54.SettingRemoteDataSource>()));
    gh.factory<_i56.SettingRepository>(() => _i57.SettingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          settingLocalDataSource: gh<_i53.SettingLocalDataSource>(),
        ));
    gh.factory<_i58.SignupApi>(() => _i58.SignupApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i59.VerifyForGetPasswordUserUseCase>(() =>
        _i59.VerifyForGetPasswordUserUseCase(
            loginRepository: gh<_i32.LoginRepository>()));
    gh.factory<_i60.WalletApi>(() => _i60.WalletApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i61.WalletRemoteDataSource>(
        () => _i61.WalletRemoteDataSourceImpl(walletApi: gh<_i60.WalletApi>()));
    gh.lazySingleton<_i62.WalletRepository>(() => _i63.WalletRepositoryImpl(
        walletRemoteDataSource: gh<_i61.WalletRemoteDataSource>()));
    gh.lazySingleton<_i64.AddFavUseCase>(
        () => _i64.AddFavUseCase(gh<_i14.FavRepository>()));
    gh.factory<_i65.BlogsApi>(() => _i65.BlogsApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i66.BlogsRemoteDataSource>(
        () => _i66.BlogsRemoteDataSourceImpl(gh<_i65.BlogsApi>()));
    gh.lazySingleton<_i67.BlogsRepository>(
        () => _i67.BlogsRepositoryImpl(gh<_i66.BlogsRemoteDataSource>()));
    gh.factory<_i68.CategoryApi>(() => _i68.CategoryApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i69.CategoryRemoteDataSource>(
        () => _i69.CategoryRemoteDataSourceImpl(gh<_i68.CategoryApi>()));
    gh.lazySingleton<_i70.CategoryRemoteDataSource>(
        () => _i70.CategoryRemoteDataSourceImpl(gh<_i68.CategoryApi>()));
    gh.lazySingleton<_i71.CategoryRepo>(() => _i71.CategoryRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i69.CategoryRemoteDataSource>(),
        ));
    gh.lazySingleton<_i72.CategoryRepository>(
        () => _i72.CategoryRepositoryImpl(gh<_i70.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i73.ChangeLangUseCase>(() =>
        _i73.ChangeLangUseCase(langRepository: gh<_i24.LocaleRepository>()));
    gh.lazySingleton<_i74.ChangePasswordUserUseCase>(() =>
        _i74.ChangePasswordUserUseCase(
            loginRepository: gh<_i32.LoginRepository>()));
    gh.lazySingleton<_i75.ChangeThemeUseCase>(() =>
        _i75.ChangeThemeUseCase(langRepository: gh<_i24.LocaleRepository>()));
    gh.lazySingleton<_i76.DeleteFavUseCase>(
        () => _i76.DeleteFavUseCase(gh<_i14.FavRepository>()));
    gh.lazySingleton<_i77.DetailsCategoryCubit>(() => _i77.DetailsCategoryCubit(
        categoryRepository: gh<_i72.CategoryRepository>()));
    gh.lazySingleton<_i78.FilterUseCase>(
        () => _i78.FilterUseCase(gh<_i71.CategoryRepo>()));
    gh.lazySingleton<_i79.ForGetPasswordUserUseCase>(() =>
        _i79.ForGetPasswordUserUseCase(
            loginRepository: gh<_i32.LoginRepository>()));
    gh.lazySingleton<_i80.GetFingerPrintUseCase>(() =>
        _i80.GetFingerPrintUseCase(
            settingRepository: gh<_i56.SettingRepository>()));
    gh.lazySingleton<_i81.GetPackagesUseCase>(() => _i81.GetPackagesUseCase(
        packagesRepository: gh<_i43.PackagesRepository>()));
    gh.lazySingleton<_i82.GetSavedLangUseCase>(() =>
        _i82.GetSavedLangUseCase(langRepository: gh<_i24.LocaleRepository>()));
    gh.lazySingleton<_i83.GetThemeUseCase>(() =>
        _i83.GetThemeUseCase(langRepository: gh<_i24.LocaleRepository>()));
    gh.lazySingleton<_i84.GetUserLocalUseCase>(() =>
        _i84.GetUserLocalUseCase(loginRepository: gh<_i32.LoginRepository>()));
    gh.factory<_i85.GetUserNotificationsUseCase>(() =>
        _i85.GetUserNotificationsUseCase(
            notificationRepository: gh<_i39.NotificationRepository>()));
    gh.lazySingleton<_i86.GetWalletUseCase>(() =>
        _i86.GetWalletUseCase(walletRepository: gh<_i62.WalletRepository>()));
    gh.factory<_i87.LocaleCubit>(() => _i87.LocaleCubit(
          getSavedLangUseCase: gh<_i82.GetSavedLangUseCase>(),
          changeLangUseCase: gh<_i73.ChangeLangUseCase>(),
          changeThemeUseCase: gh<_i75.ChangeThemeUseCase>(),
          getThemeUseCase: gh<_i83.GetThemeUseCase>(),
        ));
    gh.lazySingleton<_i88.LoginCubit>(() => _i88.LoginCubit(
          gh<_i32.LoginRepository>(),
          gh<_i79.ForGetPasswordUserUseCase>(),
          gh<_i74.ChangePasswordUserUseCase>(),
        ));
    gh.factory<_i89.NotificationCubit>(() => _i89.NotificationCubit(
        getUserNotificationsUseCase: gh<_i85.GetUserNotificationsUseCase>()));
    gh.lazySingleton<_i90.SaveFingerPrintUseCase>(() =>
        _i90.SaveFingerPrintUseCase(
            settingRepository: gh<_i56.SettingRepository>()));
    gh.factory<_i91.SettingCubit>(() => _i91.SettingCubit(
          gh<_i80.GetFingerPrintUseCase>(),
          gh<_i90.SaveFingerPrintUseCase>(),
        ));
    gh.lazySingleton<_i92.SignUpRemoteDataSource>(
        () => _i92.SignUpRemoteDataSourceImpl(
              gh<_i10.CacheHelper>(),
              gh<_i58.SignupApi>(),
            ));
    gh.lazySingleton<_i93.SignUpRepository>(
        () => _i93.SignUpRepositoryImpl(gh<_i92.SignUpRemoteDataSource>()));
    gh.lazySingleton<_i94.StorePaymentWalletUseCase>(() =>
        _i94.StorePaymentWalletUseCase(
            walletRepository: gh<_i62.WalletRepository>()));
    gh.factory<_i95.CategoryCubit>(
        () => _i95.CategoryCubit(categoryRepo: gh<_i71.CategoryRepo>()));
    gh.factory<_i96.CategoryProductCubit>(
        () => _i96.CategoryProductCubit(categoryRepo: gh<_i71.CategoryRepo>()));
    gh.lazySingleton<_i97.SignUpCubit>(
        () => _i97.SignUpCubit(gh<_i93.SignUpRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i98.RegisterModule {}

class _$DioFactory extends _i99.DioFactory {}

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
import 'package:opensooq/core/network/api/category_api.dart' as _i55;
import 'package:opensooq/core/network/api/fav_api.dart' as _i12;
import 'package:opensooq/core/network/api/follow_api.dart' as _i15;
import 'package:opensooq/core/network/api/home_user_api.dart' as _i18;
import 'package:opensooq/core/network/api/location_api.dart' as _i24;
import 'package:opensooq/core/network/api/login_api.dart' as _i27;
import 'package:opensooq/core/network/api/my_ads_api.dart' as _i32;
import 'package:opensooq/core/network/api/notification_api.dart' as _i35;
import 'package:opensooq/core/network/api/packages_api.dart' as _i39;
import 'package:opensooq/core/network/api/setting_api.dart' as _i43;
import 'package:opensooq/core/network/api/signup_api.dart' as _i49;
import 'package:opensooq/core/network/api/wallet_api.dart' as _i51;
import 'package:opensooq/core/network/dio_factory.dart' as _i83;
import 'package:opensooq/core/network/mock_interceptor.dart' as _i6;
import 'package:opensooq/core/network/network_info.dart' as _i8;
import 'package:opensooq/core/utils/cache_helper.dart' as _i10;
import 'package:opensooq/core/utils/navigator.dart' as _i7;
import 'package:opensooq/di.dart' as _i82;
import 'package:opensooq/future/category/data/data_sources/category_remote_data_source.dart'
    as _i56;
import 'package:opensooq/future/category/data/repositories/category_repository.dart'
    as _i59;
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart'
    as _i79;
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart'
    as _i63;
import 'package:opensooq/future/category_product/data/data_sources/category_remote_data_source.dart'
    as _i57;
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart'
    as _i58;
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart'
    as _i80;
import 'package:opensooq/future/favorite/data/data_sorces/fav_remot_data_sorces.dart'
    as _i13;
import 'package:opensooq/future/favorite/data/repositories/fav_repository.dart'
    as _i14;
import 'package:opensooq/future/follow_section/data/data_source/follow_remot_data_sorces.dart'
    as _i16;
import 'package:opensooq/future/follow_section/data/repositories/follow_repository.dart'
    as _i17;
import 'package:opensooq/future/home/data/data_sources/home_user_remote_data_source.dart'
    as _i19;
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart'
    as _i20;
import 'package:opensooq/future/location/data/data_sources/location_remote_data_source.dart'
    as _i25;
import 'package:opensooq/future/location/data/repositories/location_repo_impl.dart'
    as _i26;
import 'package:opensooq/future/login/data/datasources/login_local_data_source.dart'
    as _i28;
import 'package:opensooq/future/login/data/datasources/login_remote_data_source.dart'
    as _i29;
import 'package:opensooq/future/login/data/repositories/login_repo_impl.dart'
    as _i31;
import 'package:opensooq/future/login/domain/repositories/login_repo.dart'
    as _i30;
import 'package:opensooq/future/login/domain/usecase/change_password.dart'
    as _i61;
import 'package:opensooq/future/login/domain/usecase/forget_password.dart'
    as _i64;
import 'package:opensooq/future/login/domain/usecase/get_user_local.dart'
    as _i69;
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart'
    as _i50;
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart'
    as _i73;
import 'package:opensooq/future/myads/data/data_sorces/my_ads_remot_data_sorces.dart'
    as _i33;
import 'package:opensooq/future/myads/data/repositories/my_ads_repository.dart'
    as _i34;
import 'package:opensooq/future/notification/data/datasources/notification_remote_data_source.dart'
    as _i36;
import 'package:opensooq/future/notification/data/repositories/notification_repository_impl.dart'
    as _i38;
import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart'
    as _i37;
import 'package:opensooq/future/notification/domain/usecases/get_notification_usecase.dart'
    as _i70;
import 'package:opensooq/future/notification/presentation/cubit/notification_cubit.dart'
    as _i74;
import 'package:opensooq/future/packages/data/data_sources/packages_remote_data_source.dart'
    as _i40;
import 'package:opensooq/future/packages/data/repositories/packages_repo_impl.dart'
    as _i42;
import 'package:opensooq/future/packages/domain/repositories/packages_repo.dart'
    as _i41;
import 'package:opensooq/future/packages/domain/use_cases/get_package_usecase.dart'
    as _i66;
import 'package:opensooq/future/setting/data/local/data_sources/setting_local_data_source.dart'
    as _i44;
import 'package:opensooq/future/setting/data/repositories/setting_repository_impl.dart'
    as _i47;
import 'package:opensooq/future/setting/domain/repositories/setting_repository.dart'
    as _i46;
import 'package:opensooq/future/setting/domain/use_cases/get_fingerprint_usecase.dart'
    as _i65;
import 'package:opensooq/future/setting/domain/use_cases/save_fingerprint_usecase.dart'
    as _i75;
import 'package:opensooq/future/setting/presentation/cubit/setting_cubit.dart'
    as _i76;
import 'package:opensooq/future/setting1/data/data_sources/setting_remote_data_source.dart'
    as _i45;
import 'package:opensooq/future/setting1/data/repositories/setting_repository.dart'
    as _i48;
import 'package:opensooq/future/signup/data/data_sources/signup_remote_data_source.dart'
    as _i77;
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart'
    as _i78;
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart'
    as _i81;
import 'package:opensooq/future/splash/data/datasources/lang_local_data_sourece.dart'
    as _i21;
import 'package:opensooq/future/splash/data/repositories/locale_repository_impl.dart'
    as _i23;
import 'package:opensooq/future/splash/domain/repositories/locale_repository.dart'
    as _i22;
import 'package:opensooq/future/splash/domain/usecases/change_lang.dart'
    as _i60;
import 'package:opensooq/future/splash/domain/usecases/change_theme.dart'
    as _i62;
import 'package:opensooq/future/splash/domain/usecases/get_saved_lang.dart'
    as _i67;
import 'package:opensooq/future/splash/domain/usecases/get_theme_usecase.dart'
    as _i68;
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart'
    as _i72;
import 'package:opensooq/future/wallet/data/data_sources/wallet_remote_data_source.dart'
    as _i52;
import 'package:opensooq/future/wallet/data/repositories/wallet_repo_impl.dart'
    as _i54;
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart'
    as _i53;
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart'
    as _i71;
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
        () => _i14.FavRepositoryImpl(gh<_i13.FavRemoteDataSource>()));
    gh.factory<_i15.FollowApi>(() => _i15.FollowApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i16.FollowRemoteDataSource>(
        () => _i16.FollowRemoteDataSourceImpl(api: gh<_i15.FollowApi>()));
    gh.lazySingleton<_i17.FollowRepository>(
        () => _i17.FollowRepositoryImpl(gh<_i16.FollowRemoteDataSource>()));
    gh.factory<_i18.HomeUserApi>(() => _i18.HomeUserApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i19.HomeUserRemoteDataSource>(
        () => _i19.HomeUserRemoteDataSourceImpl(gh<_i18.HomeUserApi>()));
    gh.lazySingleton<_i20.HomeUserRepo>(() => _i20.HomeUserRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i19.HomeUserRemoteDataSource>(),
        ));
    gh.lazySingleton<_i21.LangLocalDataSource>(() =>
        _i21.LangLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i22.LocaleRepository>(() => _i23.LocaleRepositoryImpl(
        langLocalDataSource: gh<_i21.LangLocalDataSource>()));
    gh.factory<_i24.LocationApi>(() => _i24.LocationApi(gh<_i5.Dio>()));
    gh.factory<_i25.LocationRemoteDataSource>(
        () => _i25.LocationRemoteImpl(gh<_i24.LocationApi>()));
    gh.factory<_i26.LocationRepo>(
        () => _i26.LocationRepoImpl(gh<_i25.LocationRemoteDataSource>()));
    gh.factory<_i27.LoginApi>(() => _i27.LoginApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i28.LoginLocalDataSource>(
        () => _i28.LoginLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i29.LoginRemoteDataSource>(
        () => _i29.LoginRemoteDataSourceImpl(gh<_i27.LoginApi>()));
    gh.lazySingleton<_i30.LoginRepository>(() => _i31.LoginRepoImpl(
          gh<_i29.LoginRemoteDataSource>(),
          gh<_i28.LoginLocalDataSource>(),
        ));
    gh.factory<_i32.MyAdsApi>(() => _i32.MyAdsApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i33.MyAdsRemoteDataSource>(
        () => _i33.MyAdsRemoteDataSourceImpl(gh<_i32.MyAdsApi>()));
    gh.lazySingleton<_i34.MyAdsRepository>(
        () => _i34.MyAdsRepositoryImpl(gh<_i33.MyAdsRemoteDataSource>()));
    gh.factory<_i35.NotificationApi>(() => _i35.NotificationApi(gh<_i5.Dio>()));
    gh.factory<_i36.NotificationRemoteDataSource>(
        () => _i36.GetUserNotificationRemoteImpl(gh<_i35.NotificationApi>()));
    gh.factory<_i37.NotificationRepository>(
        () => _i38.NotificationRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserRemoteDataSource: gh<_i36.NotificationRemoteDataSource>(),
            ));
    gh.factory<_i39.PackagesApi>(() => _i39.PackagesApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i40.PackagesRemoteDataSource>(() =>
        _i40.PackagesRemoteDataSourceImpl(packagesApi: gh<_i39.PackagesApi>()));
    gh.lazySingleton<_i41.PackagesRepository>(() => _i42.PackagesRepositoryImpl(
        packagesRemoteDataSource: gh<_i40.PackagesRemoteDataSource>()));
    gh.factory<_i43.SettingApi>(() => _i43.SettingApi(gh<_i5.Dio>()));
    gh.factory<_i44.SettingLocalDataSource>(() =>
        _i44.SettingLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i45.SettingRemoteDataSource>(
        () => _i45.SettingRemoteDataSourceImpl(gh<_i43.SettingApi>()));
    gh.factory<_i46.SettingRepository>(() => _i47.SettingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          settingLocalDataSource: gh<_i44.SettingLocalDataSource>(),
        ));
    gh.lazySingleton<_i48.SettingRepository>(
        () => _i48.SettingRepositoryImpl(gh<_i45.SettingRemoteDataSource>()));
    gh.factory<_i49.SignupApi>(() => _i49.SignupApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i50.VerifyForGetPasswordUserUseCase>(() =>
        _i50.VerifyForGetPasswordUserUseCase(
            loginRepository: gh<_i30.LoginRepository>()));
    gh.factory<_i51.WalletApi>(() => _i51.WalletApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i52.WalletRemoteDataSource>(
        () => _i52.WalletRemoteDataSourceImpl(walletApi: gh<_i51.WalletApi>()));
    gh.lazySingleton<_i53.WalletRepository>(() => _i54.WalletRepositoryImpl(
        walletRemoteDataSource: gh<_i52.WalletRemoteDataSource>()));
    gh.factory<_i55.CategoryApi>(() => _i55.CategoryApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i56.CategoryRemoteDataSource>(
        () => _i56.CategoryRemoteDataSourceImpl(gh<_i55.CategoryApi>()));
    gh.lazySingleton<_i57.CategoryRemoteDataSource>(
        () => _i57.CategoryRemoteDataSourceImpl(gh<_i55.CategoryApi>()));
    gh.lazySingleton<_i58.CategoryRepo>(() => _i58.CategoryRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i57.CategoryRemoteDataSource>(),
        ));
    gh.lazySingleton<_i59.CategoryRepository>(
        () => _i59.CategoryRepositoryImpl(gh<_i56.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i60.ChangeLangUseCase>(() =>
        _i60.ChangeLangUseCase(langRepository: gh<_i22.LocaleRepository>()));
    gh.lazySingleton<_i61.ChangePasswordUserUseCase>(() =>
        _i61.ChangePasswordUserUseCase(
            loginRepository: gh<_i30.LoginRepository>()));
    gh.lazySingleton<_i62.ChangeThemeUseCase>(() =>
        _i62.ChangeThemeUseCase(langRepository: gh<_i22.LocaleRepository>()));
    gh.lazySingleton<_i63.DetailsCategoryCubit>(() => _i63.DetailsCategoryCubit(
        categoryRepository: gh<_i59.CategoryRepository>()));
    gh.lazySingleton<_i64.ForGetPasswordUserUseCase>(() =>
        _i64.ForGetPasswordUserUseCase(
            loginRepository: gh<_i30.LoginRepository>()));
    gh.lazySingleton<_i65.GetFingerPrintUseCase>(() =>
        _i65.GetFingerPrintUseCase(
            settingRepository: gh<_i46.SettingRepository>()));
    gh.lazySingleton<_i66.GetPackagesUseCase>(() => _i66.GetPackagesUseCase(
        packagesRepository: gh<_i41.PackagesRepository>()));
    gh.lazySingleton<_i67.GetSavedLangUseCase>(() =>
        _i67.GetSavedLangUseCase(langRepository: gh<_i22.LocaleRepository>()));
    gh.lazySingleton<_i68.GetThemeUseCase>(() =>
        _i68.GetThemeUseCase(langRepository: gh<_i22.LocaleRepository>()));
    gh.lazySingleton<_i69.GetUserLocalUseCase>(() =>
        _i69.GetUserLocalUseCase(loginRepository: gh<_i30.LoginRepository>()));
    gh.factory<_i70.GetUserNotificationsUseCase>(() =>
        _i70.GetUserNotificationsUseCase(
            notificationRepository: gh<_i37.NotificationRepository>()));
    gh.lazySingleton<_i71.GetWalletUseCase>(() =>
        _i71.GetWalletUseCase(walletRepository: gh<_i53.WalletRepository>()));
    gh.factory<_i72.LocaleCubit>(() => _i72.LocaleCubit(
          getSavedLangUseCase: gh<_i67.GetSavedLangUseCase>(),
          changeLangUseCase: gh<_i60.ChangeLangUseCase>(),
          changeThemeUseCase: gh<_i62.ChangeThemeUseCase>(),
          getThemeUseCase: gh<_i68.GetThemeUseCase>(),
        ));
    gh.lazySingleton<_i73.LoginCubit>(() => _i73.LoginCubit(
          gh<_i30.LoginRepository>(),
          gh<_i64.ForGetPasswordUserUseCase>(),
          gh<_i61.ChangePasswordUserUseCase>(),
        ));
    gh.factory<_i74.NotificationCubit>(() => _i74.NotificationCubit(
        getUserNotificationsUseCase: gh<_i70.GetUserNotificationsUseCase>()));
    gh.lazySingleton<_i75.SaveFingerPrintUseCase>(() =>
        _i75.SaveFingerPrintUseCase(
            settingRepository: gh<_i46.SettingRepository>()));
    gh.factory<_i76.SettingCubit>(() => _i76.SettingCubit(
          gh<_i65.GetFingerPrintUseCase>(),
          gh<_i75.SaveFingerPrintUseCase>(),
        ));
    gh.lazySingleton<_i77.SignUpRemoteDataSource>(
        () => _i77.SignUpRemoteDataSourceImpl(
              gh<_i3.FirebaseAuth>(),
              gh<_i49.SignupApi>(),
            ));
    gh.lazySingleton<_i78.SignUpRepository>(
        () => _i78.SignUpRepositoryImpl(gh<_i77.SignUpRemoteDataSource>()));
    gh.factory<_i79.CategoryCubit>(
        () => _i79.CategoryCubit(categoryRepo: gh<_i58.CategoryRepo>()));
    gh.factory<_i80.CategoryProductCubit>(
        () => _i80.CategoryProductCubit(categoryRepo: gh<_i58.CategoryRepo>()));
    gh.lazySingleton<_i81.SignUpCubit>(
        () => _i81.SignUpCubit(gh<_i78.SignUpRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i82.RegisterModule {}

class _$DioFactory extends _i83.DioFactory {}

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
import 'package:opensooq/core/network/api/category_api.dart' as _i59;
import 'package:opensooq/core/network/api/fav_api.dart' as _i12;
import 'package:opensooq/core/network/api/follow_api.dart' as _i17;
import 'package:opensooq/core/network/api/home_user_api.dart' as _i20;
import 'package:opensooq/core/network/api/location_api.dart' as _i27;
import 'package:opensooq/core/network/api/login_api.dart' as _i30;
import 'package:opensooq/core/network/api/my_ads_api.dart' as _i35;
import 'package:opensooq/core/network/api/notification_api.dart' as _i38;
import 'package:opensooq/core/network/api/packages_api.dart' as _i42;
import 'package:opensooq/core/network/api/setting_api.dart' as _i46;
import 'package:opensooq/core/network/api/signup_api.dart' as _i52;
import 'package:opensooq/core/network/api/wallet_api.dart' as _i54;
import 'package:opensooq/core/network/dio_factory.dart' as _i88;
import 'package:opensooq/core/network/mock_interceptor.dart' as _i6;
import 'package:opensooq/core/network/network_info.dart' as _i8;
import 'package:opensooq/core/utils/cache_helper.dart' as _i10;
import 'package:opensooq/core/utils/navigator.dart' as _i7;
import 'package:opensooq/di.dart' as _i87;
import 'package:opensooq/future/category/data/data_sources/category_remote_data_source.dart'
    as _i61;
import 'package:opensooq/future/category/data/repositories/category_repository.dart'
    as _i63;
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart'
    as _i84;
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart'
    as _i68;
import 'package:opensooq/future/category_product/data/data_sources/category_remote_data_source.dart'
    as _i60;
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart'
    as _i62;
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart'
    as _i85;
import 'package:opensooq/future/favorite/data/data_sorces/fav_remot_data_sorces.dart'
    as _i13;
import 'package:opensooq/future/favorite/data/repositories/fav_repository.dart'
    as _i14;
import 'package:opensooq/future/favorite/domain/repositories/fav_repo_impl.dart'
    as _i15;
import 'package:opensooq/future/favorite/domain/use_cases/add_fav_usecase.dart'
    as _i58;
import 'package:opensooq/future/favorite/domain/use_cases/delete_fav_usecase.dart'
    as _i67;
import 'package:opensooq/future/favorite/domain/use_cases/fav_usecase.dart'
    as _i16;
import 'package:opensooq/future/follow_section/data/data_source/follow_remot_data_sorces.dart'
    as _i18;
import 'package:opensooq/future/follow_section/data/repositories/follow_repository.dart'
    as _i19;
import 'package:opensooq/future/home/data/data_sources/home_user_local_data_source.dart'
    as _i21;
import 'package:opensooq/future/home/data/data_sources/home_user_remote_data_source.dart'
    as _i22;
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart'
    as _i23;
import 'package:opensooq/future/location/data/data_sources/location_remote_data_source.dart'
    as _i28;
import 'package:opensooq/future/location/data/repositories/location_repo_impl.dart'
    as _i29;
import 'package:opensooq/future/login/data/datasources/login_local_data_source.dart'
    as _i31;
import 'package:opensooq/future/login/data/datasources/login_remote_data_source.dart'
    as _i32;
import 'package:opensooq/future/login/data/repositories/login_repo_impl.dart'
    as _i34;
import 'package:opensooq/future/login/domain/repositories/login_repo.dart'
    as _i33;
import 'package:opensooq/future/login/domain/usecase/change_password.dart'
    as _i65;
import 'package:opensooq/future/login/domain/usecase/forget_password.dart'
    as _i69;
import 'package:opensooq/future/login/domain/usecase/get_user_local.dart'
    as _i74;
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart'
    as _i53;
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart'
    as _i78;
import 'package:opensooq/future/myads/data/data_sorces/my_ads_remot_data_sorces.dart'
    as _i36;
import 'package:opensooq/future/myads/data/repositories/my_ads_repository.dart'
    as _i37;
import 'package:opensooq/future/notification/data/datasources/notification_remote_data_source.dart'
    as _i39;
import 'package:opensooq/future/notification/data/repositories/notification_repository_impl.dart'
    as _i41;
import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart'
    as _i40;
import 'package:opensooq/future/notification/domain/usecases/get_notification_usecase.dart'
    as _i75;
import 'package:opensooq/future/notification/presentation/cubit/notification_cubit.dart'
    as _i79;
import 'package:opensooq/future/packages/data/data_sources/packages_remote_data_source.dart'
    as _i43;
import 'package:opensooq/future/packages/data/repositories/packages_repo_impl.dart'
    as _i45;
import 'package:opensooq/future/packages/domain/repositories/packages_repo.dart'
    as _i44;
import 'package:opensooq/future/packages/domain/use_cases/get_package_usecase.dart'
    as _i71;
import 'package:opensooq/future/setting/data/local/data_sources/setting_local_data_source.dart'
    as _i47;
import 'package:opensooq/future/setting/data/repositories/setting_repository_impl.dart'
    as _i51;
import 'package:opensooq/future/setting/domain/repositories/setting_repository.dart'
    as _i50;
import 'package:opensooq/future/setting/domain/use_cases/get_fingerprint_usecase.dart'
    as _i70;
import 'package:opensooq/future/setting/domain/use_cases/save_fingerprint_usecase.dart'
    as _i80;
import 'package:opensooq/future/setting/presentation/cubit/setting_cubit.dart'
    as _i81;
import 'package:opensooq/future/setting1/data/data_sources/setting_remote_data_source.dart'
    as _i48;
import 'package:opensooq/future/setting1/data/repositories/setting_repository.dart'
    as _i49;
import 'package:opensooq/future/signup/data/data_sources/signup_remote_data_source.dart'
    as _i82;
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart'
    as _i83;
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart'
    as _i86;
import 'package:opensooq/future/splash/data/datasources/lang_local_data_sourece.dart'
    as _i24;
import 'package:opensooq/future/splash/data/repositories/locale_repository_impl.dart'
    as _i26;
import 'package:opensooq/future/splash/domain/repositories/locale_repository.dart'
    as _i25;
import 'package:opensooq/future/splash/domain/usecases/change_lang.dart'
    as _i64;
import 'package:opensooq/future/splash/domain/usecases/change_theme.dart'
    as _i66;
import 'package:opensooq/future/splash/domain/usecases/get_saved_lang.dart'
    as _i72;
import 'package:opensooq/future/splash/domain/usecases/get_theme_usecase.dart'
    as _i73;
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart'
    as _i77;
import 'package:opensooq/future/wallet/data/data_sources/wallet_remote_data_source.dart'
    as _i55;
import 'package:opensooq/future/wallet/data/repositories/wallet_repo_impl.dart'
    as _i57;
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart'
    as _i56;
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart'
    as _i76;
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
    gh.lazySingleton<_i21.HomeUserLocalDataSource>(
        () => _i21.HomeUserLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i22.HomeUserRemoteDataSource>(
        () => _i22.HomeUserRemoteDataSourceImpl(gh<_i20.HomeUserApi>()));
    gh.lazySingleton<_i23.HomeUserRepo>(() => _i23.HomeUserRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i22.HomeUserRemoteDataSource>(),
          gh<_i21.HomeUserLocalDataSource>(),
        ));
    gh.lazySingleton<_i24.LangLocalDataSource>(() =>
        _i24.LangLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i25.LocaleRepository>(() => _i26.LocaleRepositoryImpl(
        langLocalDataSource: gh<_i24.LangLocalDataSource>()));
    gh.factory<_i27.LocationApi>(() => _i27.LocationApi(gh<_i5.Dio>()));
    gh.factory<_i28.LocationRemoteDataSource>(
        () => _i28.LocationRemoteImpl(gh<_i27.LocationApi>()));
    gh.factory<_i29.LocationRepo>(
        () => _i29.LocationRepoImpl(gh<_i28.LocationRemoteDataSource>()));
    gh.factory<_i30.LoginApi>(() => _i30.LoginApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i31.LoginLocalDataSource>(
        () => _i31.LoginLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i32.LoginRemoteDataSource>(
        () => _i32.LoginRemoteDataSourceImpl(gh<_i30.LoginApi>()));
    gh.lazySingleton<_i33.LoginRepository>(() => _i34.LoginRepoImpl(
          gh<_i32.LoginRemoteDataSource>(),
          gh<_i31.LoginLocalDataSource>(),
        ));
    gh.factory<_i35.MyAdsApi>(() => _i35.MyAdsApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i36.MyAdsRemoteDataSource>(
        () => _i36.MyAdsRemoteDataSourceImpl(gh<_i35.MyAdsApi>()));
    gh.lazySingleton<_i37.MyAdsRepository>(
        () => _i37.MyAdsRepositoryImpl(gh<_i36.MyAdsRemoteDataSource>()));
    gh.factory<_i38.NotificationApi>(() => _i38.NotificationApi(gh<_i5.Dio>()));
    gh.factory<_i39.NotificationRemoteDataSource>(
        () => _i39.GetUserNotificationRemoteImpl(gh<_i38.NotificationApi>()));
    gh.factory<_i40.NotificationRepository>(
        () => _i41.NotificationRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserRemoteDataSource: gh<_i39.NotificationRemoteDataSource>(),
            ));
    gh.factory<_i42.PackagesApi>(() => _i42.PackagesApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i43.PackagesRemoteDataSource>(() =>
        _i43.PackagesRemoteDataSourceImpl(packagesApi: gh<_i42.PackagesApi>()));
    gh.lazySingleton<_i44.PackagesRepository>(() => _i45.PackagesRepositoryImpl(
        packagesRemoteDataSource: gh<_i43.PackagesRemoteDataSource>()));
    gh.factory<_i46.SettingApi>(() => _i46.SettingApi(gh<_i5.Dio>()));
    gh.factory<_i47.SettingLocalDataSource>(() =>
        _i47.SettingLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i48.SettingRemoteDataSource>(
        () => _i48.SettingRemoteDataSourceImpl(gh<_i46.SettingApi>()));
    gh.lazySingleton<_i49.SettingRepository>(
        () => _i49.SettingRepositoryImpl(gh<_i48.SettingRemoteDataSource>()));
    gh.factory<_i50.SettingRepository>(() => _i51.SettingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          settingLocalDataSource: gh<_i47.SettingLocalDataSource>(),
        ));
    gh.factory<_i52.SignupApi>(() => _i52.SignupApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i53.VerifyForGetPasswordUserUseCase>(() =>
        _i53.VerifyForGetPasswordUserUseCase(
            loginRepository: gh<_i33.LoginRepository>()));
    gh.factory<_i54.WalletApi>(() => _i54.WalletApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i55.WalletRemoteDataSource>(
        () => _i55.WalletRemoteDataSourceImpl(walletApi: gh<_i54.WalletApi>()));
    gh.lazySingleton<_i56.WalletRepository>(() => _i57.WalletRepositoryImpl(
        walletRemoteDataSource: gh<_i55.WalletRemoteDataSource>()));
    gh.lazySingleton<_i58.AddFavUseCase>(
        () => _i58.AddFavUseCase(gh<_i14.FavRepository>()));
    gh.factory<_i59.CategoryApi>(() => _i59.CategoryApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i60.CategoryRemoteDataSource>(
        () => _i60.CategoryRemoteDataSourceImpl(gh<_i59.CategoryApi>()));
    gh.lazySingleton<_i61.CategoryRemoteDataSource>(
        () => _i61.CategoryRemoteDataSourceImpl(gh<_i59.CategoryApi>()));
    gh.lazySingleton<_i62.CategoryRepo>(() => _i62.CategoryRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i60.CategoryRemoteDataSource>(),
        ));
    gh.lazySingleton<_i63.CategoryRepository>(
        () => _i63.CategoryRepositoryImpl(gh<_i61.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i64.ChangeLangUseCase>(() =>
        _i64.ChangeLangUseCase(langRepository: gh<_i25.LocaleRepository>()));
    gh.lazySingleton<_i65.ChangePasswordUserUseCase>(() =>
        _i65.ChangePasswordUserUseCase(
            loginRepository: gh<_i33.LoginRepository>()));
    gh.lazySingleton<_i66.ChangeThemeUseCase>(() =>
        _i66.ChangeThemeUseCase(langRepository: gh<_i25.LocaleRepository>()));
    gh.lazySingleton<_i67.DeleteFavUseCase>(
        () => _i67.DeleteFavUseCase(gh<_i14.FavRepository>()));
    gh.lazySingleton<_i68.DetailsCategoryCubit>(() => _i68.DetailsCategoryCubit(
        categoryRepository: gh<_i63.CategoryRepository>()));
    gh.lazySingleton<_i69.ForGetPasswordUserUseCase>(() =>
        _i69.ForGetPasswordUserUseCase(
            loginRepository: gh<_i33.LoginRepository>()));
    gh.lazySingleton<_i70.GetFingerPrintUseCase>(() =>
        _i70.GetFingerPrintUseCase(
            settingRepository: gh<_i50.SettingRepository>()));
    gh.lazySingleton<_i71.GetPackagesUseCase>(() => _i71.GetPackagesUseCase(
        packagesRepository: gh<_i44.PackagesRepository>()));
    gh.lazySingleton<_i72.GetSavedLangUseCase>(() =>
        _i72.GetSavedLangUseCase(langRepository: gh<_i25.LocaleRepository>()));
    gh.lazySingleton<_i73.GetThemeUseCase>(() =>
        _i73.GetThemeUseCase(langRepository: gh<_i25.LocaleRepository>()));
    gh.lazySingleton<_i74.GetUserLocalUseCase>(() =>
        _i74.GetUserLocalUseCase(loginRepository: gh<_i33.LoginRepository>()));
    gh.factory<_i75.GetUserNotificationsUseCase>(() =>
        _i75.GetUserNotificationsUseCase(
            notificationRepository: gh<_i40.NotificationRepository>()));
    gh.lazySingleton<_i76.GetWalletUseCase>(() =>
        _i76.GetWalletUseCase(walletRepository: gh<_i56.WalletRepository>()));
    gh.factory<_i77.LocaleCubit>(() => _i77.LocaleCubit(
          getSavedLangUseCase: gh<_i72.GetSavedLangUseCase>(),
          changeLangUseCase: gh<_i64.ChangeLangUseCase>(),
          changeThemeUseCase: gh<_i66.ChangeThemeUseCase>(),
          getThemeUseCase: gh<_i73.GetThemeUseCase>(),
        ));
    gh.lazySingleton<_i78.LoginCubit>(() => _i78.LoginCubit(
          gh<_i33.LoginRepository>(),
          gh<_i69.ForGetPasswordUserUseCase>(),
          gh<_i65.ChangePasswordUserUseCase>(),
        ));
    gh.factory<_i79.NotificationCubit>(() => _i79.NotificationCubit(
        getUserNotificationsUseCase: gh<_i75.GetUserNotificationsUseCase>()));
    gh.lazySingleton<_i80.SaveFingerPrintUseCase>(() =>
        _i80.SaveFingerPrintUseCase(
            settingRepository: gh<_i50.SettingRepository>()));
    gh.factory<_i81.SettingCubit>(() => _i81.SettingCubit(
          gh<_i70.GetFingerPrintUseCase>(),
          gh<_i80.SaveFingerPrintUseCase>(),
        ));
    gh.lazySingleton<_i82.SignUpRemoteDataSource>(
        () => _i82.SignUpRemoteDataSourceImpl(
              gh<_i3.FirebaseAuth>(),
              gh<_i52.SignupApi>(),
            ));
    gh.lazySingleton<_i83.SignUpRepository>(
        () => _i83.SignUpRepositoryImpl(gh<_i82.SignUpRemoteDataSource>()));
    gh.factory<_i84.CategoryCubit>(
        () => _i84.CategoryCubit(categoryRepo: gh<_i62.CategoryRepo>()));
    gh.factory<_i85.CategoryProductCubit>(
        () => _i85.CategoryProductCubit(categoryRepo: gh<_i62.CategoryRepo>()));
    gh.lazySingleton<_i86.SignUpCubit>(
        () => _i86.SignUpCubit(gh<_i83.SignUpRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i87.RegisterModule {}

class _$DioFactory extends _i88.DioFactory {}

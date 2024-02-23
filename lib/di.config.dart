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
import 'package:opensooq/core/network/api/category_api.dart' as _i49;
import 'package:opensooq/core/network/api/fav_api.dart' as _i12;
import 'package:opensooq/core/network/api/home_user_api.dart' as _i15;
import 'package:opensooq/core/network/api/location_api.dart' as _i21;
import 'package:opensooq/core/network/api/login_api.dart' as _i24;
import 'package:opensooq/core/network/api/notification_api.dart' as _i29;
import 'package:opensooq/core/network/api/packages_api.dart' as _i33;
import 'package:opensooq/core/network/api/setting_api.dart' as _i37;
import 'package:opensooq/core/network/api/signup_api.dart' as _i43;
import 'package:opensooq/core/network/api/wallet_api.dart' as _i45;
import 'package:opensooq/core/network/dio_factory.dart' as _i78;
import 'package:opensooq/core/network/mock_interceptor.dart' as _i6;
import 'package:opensooq/core/network/network_info.dart' as _i8;
import 'package:opensooq/core/utils/cache_helper.dart' as _i10;
import 'package:opensooq/core/utils/navigator.dart' as _i7;
import 'package:opensooq/di.dart' as _i77;
import 'package:opensooq/future/category/data/data_sources/category_remote_data_source.dart'
    as _i51;
import 'package:opensooq/future/category/data/repositories/category_repository.dart'
    as _i53;
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart'
    as _i74;
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart'
    as _i57;
import 'package:opensooq/future/category_product/data/data_sources/category_remote_data_source.dart'
    as _i50;
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart'
    as _i52;
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart'
    as _i73;
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart'
    as _i75;
import 'package:opensooq/future/favorite/data/data_sorces/fav_remot_data_sorces.dart'
    as _i13;
import 'package:opensooq/future/favorite/data/repositories/fav_repository.dart'
    as _i14;
import 'package:opensooq/future/home/data/data_sources/home_user_remote_data_source.dart'
    as _i16;
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart'
    as _i17;
import 'package:opensooq/future/location/data/data_sources/location_remote_data_source.dart'
    as _i22;
import 'package:opensooq/future/location/data/repositories/location_repo_impl.dart'
    as _i23;
import 'package:opensooq/future/login/data/datasources/login_local_data_source.dart'
    as _i25;
import 'package:opensooq/future/login/data/datasources/login_remote_data_source.dart'
    as _i26;
import 'package:opensooq/future/login/data/repositories/login_repo_impl.dart'
    as _i28;
import 'package:opensooq/future/login/domain/repositories/login_repo.dart'
    as _i27;
import 'package:opensooq/future/login/domain/usecase/change_password.dart'
    as _i55;
import 'package:opensooq/future/login/domain/usecase/forget_password.dart'
    as _i58;
import 'package:opensooq/future/login/domain/usecase/get_user_local.dart'
    as _i63;
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart'
    as _i44;
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart'
    as _i67;
import 'package:opensooq/future/notification/data/datasources/notification_remote_data_source.dart'
    as _i30;
import 'package:opensooq/future/notification/data/repositories/notification_repository_impl.dart'
    as _i32;
import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart'
    as _i31;
import 'package:opensooq/future/notification/domain/usecases/get_notification_usecase.dart'
    as _i64;
import 'package:opensooq/future/notification/presentation/cubit/notification_cubit.dart'
    as _i68;
import 'package:opensooq/future/packages/data/data_sources/packages_remote_data_source.dart'
    as _i34;
import 'package:opensooq/future/packages/data/repositories/packages_repo_impl.dart'
    as _i36;
import 'package:opensooq/future/packages/domain/repositories/packages_repo.dart'
    as _i35;
import 'package:opensooq/future/packages/domain/use_cases/get_package_usecase.dart'
    as _i60;
import 'package:opensooq/future/setting/data/local/data_sources/setting_local_data_source.dart'
    as _i38;
import 'package:opensooq/future/setting/data/repositories/setting_repository_impl.dart'
    as _i42;
import 'package:opensooq/future/setting/domain/repositories/setting_repository.dart'
    as _i41;
import 'package:opensooq/future/setting/domain/use_cases/get_fingerprint_usecase.dart'
    as _i59;
import 'package:opensooq/future/setting/domain/use_cases/save_fingerprint_usecase.dart'
    as _i69;
import 'package:opensooq/future/setting/presentation/cubit/setting_cubit.dart'
    as _i70;
import 'package:opensooq/future/setting1/data/data_sources/setting_remote_data_source.dart'
    as _i39;
import 'package:opensooq/future/setting1/data/repositories/setting_repository.dart'
    as _i40;
import 'package:opensooq/future/signup/data/data_sources/signup_remote_data_source.dart'
    as _i71;
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart'
    as _i72;
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart'
    as _i76;
import 'package:opensooq/future/splash/data/datasources/lang_local_data_sourece.dart'
    as _i18;
import 'package:opensooq/future/splash/data/repositories/locale_repository_impl.dart'
    as _i20;
import 'package:opensooq/future/splash/domain/repositories/locale_repository.dart'
    as _i19;
import 'package:opensooq/future/splash/domain/usecases/change_lang.dart'
    as _i54;
import 'package:opensooq/future/splash/domain/usecases/change_theme.dart'
    as _i56;
import 'package:opensooq/future/splash/domain/usecases/get_saved_lang.dart'
    as _i61;
import 'package:opensooq/future/splash/domain/usecases/get_theme_usecase.dart'
    as _i62;
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart'
    as _i66;
import 'package:opensooq/future/wallet/data/data_sources/wallet_remote_data_source.dart'
    as _i46;
import 'package:opensooq/future/wallet/data/repositories/wallet_repo_impl.dart'
    as _i48;
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart'
    as _i47;
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart'
    as _i65;
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
    gh.factory<_i15.HomeUserApi>(() => _i15.HomeUserApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i16.HomeUserRemoteDataSource>(
        () => _i16.HomeUserRemoteDataSourceImpl(gh<_i15.HomeUserApi>()));
    gh.lazySingleton<_i17.HomeUserRepo>(() => _i17.HomeUserRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i16.HomeUserRemoteDataSource>(),
        ));
    gh.lazySingleton<_i18.LangLocalDataSource>(() =>
        _i18.LangLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i19.LocaleRepository>(() => _i20.LocaleRepositoryImpl(
        langLocalDataSource: gh<_i18.LangLocalDataSource>()));
    gh.factory<_i21.LocationApi>(() => _i21.LocationApi(gh<_i5.Dio>()));
    gh.factory<_i22.LocationRemoteDataSource>(
        () => _i22.LocationRemoteImpl(gh<_i21.LocationApi>()));
    gh.factory<_i23.LocationRepo>(
        () => _i23.LocationRepoImpl(gh<_i22.LocationRemoteDataSource>()));
    gh.factory<_i24.LoginApi>(() => _i24.LoginApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i25.LoginLocalDataSource>(
        () => _i25.LoginLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i26.LoginRemoteDataSource>(
        () => _i26.LoginRemoteDataSourceImpl(gh<_i24.LoginApi>()));
    gh.lazySingleton<_i27.LoginRepository>(() => _i28.LoginRepoImpl(
          gh<_i26.LoginRemoteDataSource>(),
          gh<_i25.LoginLocalDataSource>(),
        ));
    gh.factory<_i29.NotificationApi>(() => _i29.NotificationApi(gh<_i5.Dio>()));
    gh.factory<_i30.NotificationRemoteDataSource>(
        () => _i30.GetUserNotificationRemoteImpl(gh<_i29.NotificationApi>()));
    gh.factory<_i31.NotificationRepository>(
        () => _i32.NotificationRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserRemoteDataSource: gh<_i30.NotificationRemoteDataSource>(),
            ));
    gh.factory<_i33.PackagesApi>(() => _i33.PackagesApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i34.PackagesRemoteDataSource>(() =>
        _i34.PackagesRemoteDataSourceImpl(packagesApi: gh<_i33.PackagesApi>()));
    gh.lazySingleton<_i35.PackagesRepository>(() => _i36.PackagesRepositoryImpl(
        packagesRemoteDataSource: gh<_i34.PackagesRemoteDataSource>()));
    gh.factory<_i37.SettingApi>(() => _i37.SettingApi(gh<_i5.Dio>()));
    gh.factory<_i38.SettingLocalDataSource>(() =>
        _i38.SettingLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i39.SettingRemoteDataSource>(
        () => _i39.SettingRemoteDataSourceImpl(gh<_i37.SettingApi>()));
    gh.lazySingleton<_i40.SettingRepository>(
        () => _i40.SettingRepositoryImpl(gh<_i39.SettingRemoteDataSource>()));
    gh.factory<_i41.SettingRepository>(() => _i42.SettingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          settingLocalDataSource: gh<_i38.SettingLocalDataSource>(),
        ));
    gh.factory<_i43.SignupApi>(() => _i43.SignupApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i44.VerifyForGetPasswordUserUseCase>(() =>
        _i44.VerifyForGetPasswordUserUseCase(
            loginRepository: gh<_i27.LoginRepository>()));
    gh.factory<_i45.WalletApi>(() => _i45.WalletApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i46.WalletRemoteDataSource>(
        () => _i46.WalletRemoteDataSourceImpl(walletApi: gh<_i45.WalletApi>()));
    gh.lazySingleton<_i47.WalletRepository>(() => _i48.WalletRepositoryImpl(
        walletRemoteDataSource: gh<_i46.WalletRemoteDataSource>()));
    gh.factory<_i49.CategoryApi>(() => _i49.CategoryApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i50.CategoryRemoteDataSource>(
        () => _i50.CategoryRemoteDataSourceImpl(gh<_i49.CategoryApi>()));
    gh.lazySingleton<_i51.CategoryRemoteDataSource>(
        () => _i51.CategoryRemoteDataSourceImpl(gh<_i49.CategoryApi>()));
    gh.lazySingleton<_i52.CategoryRepo>(() => _i52.CategoryRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i50.CategoryRemoteDataSource>(),
        ));
    gh.lazySingleton<_i53.CategoryRepository>(
        () => _i53.CategoryRepositoryImpl(gh<_i51.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i54.ChangeLangUseCase>(() =>
        _i54.ChangeLangUseCase(langRepository: gh<_i19.LocaleRepository>()));
    gh.lazySingleton<_i55.ChangePasswordUserUseCase>(() =>
        _i55.ChangePasswordUserUseCase(
            loginRepository: gh<_i27.LoginRepository>()));
    gh.lazySingleton<_i56.ChangeThemeUseCase>(() =>
        _i56.ChangeThemeUseCase(langRepository: gh<_i19.LocaleRepository>()));
    gh.lazySingleton<_i57.DetailsCategoryCubit>(() => _i57.DetailsCategoryCubit(
        categoryRepository: gh<_i53.CategoryRepository>()));
    gh.lazySingleton<_i58.ForGetPasswordUserUseCase>(() =>
        _i58.ForGetPasswordUserUseCase(
            loginRepository: gh<_i27.LoginRepository>()));
    gh.lazySingleton<_i59.GetFingerPrintUseCase>(() =>
        _i59.GetFingerPrintUseCase(
            settingRepository: gh<_i41.SettingRepository>()));
    gh.lazySingleton<_i60.GetPackagesUseCase>(() => _i60.GetPackagesUseCase(
        packagesRepository: gh<_i35.PackagesRepository>()));
    gh.lazySingleton<_i61.GetSavedLangUseCase>(() =>
        _i61.GetSavedLangUseCase(langRepository: gh<_i19.LocaleRepository>()));
    gh.lazySingleton<_i62.GetThemeUseCase>(() =>
        _i62.GetThemeUseCase(langRepository: gh<_i19.LocaleRepository>()));
    gh.lazySingleton<_i63.GetUserLocalUseCase>(() =>
        _i63.GetUserLocalUseCase(loginRepository: gh<_i27.LoginRepository>()));
    gh.factory<_i64.GetUserNotificationsUseCase>(() =>
        _i64.GetUserNotificationsUseCase(
            notificationRepository: gh<_i31.NotificationRepository>()));
    gh.lazySingleton<_i65.GetWalletUseCase>(() =>
        _i65.GetWalletUseCase(walletRepository: gh<_i47.WalletRepository>()));
    gh.factory<_i66.LocaleCubit>(() => _i66.LocaleCubit(
          getSavedLangUseCase: gh<_i61.GetSavedLangUseCase>(),
          changeLangUseCase: gh<_i54.ChangeLangUseCase>(),
          changeThemeUseCase: gh<_i56.ChangeThemeUseCase>(),
          getThemeUseCase: gh<_i62.GetThemeUseCase>(),
        ));
    gh.lazySingleton<_i67.LoginCubit>(() => _i67.LoginCubit(
          gh<_i27.LoginRepository>(),
          gh<_i58.ForGetPasswordUserUseCase>(),
          gh<_i55.ChangePasswordUserUseCase>(),
        ));
    gh.factory<_i68.NotificationCubit>(() => _i68.NotificationCubit(
        getUserNotificationsUseCase: gh<_i64.GetUserNotificationsUseCase>()));
    gh.lazySingleton<_i69.SaveFingerPrintUseCase>(() =>
        _i69.SaveFingerPrintUseCase(
            settingRepository: gh<_i41.SettingRepository>()));
    gh.factory<_i70.SettingCubit>(() => _i70.SettingCubit(
          gh<_i59.GetFingerPrintUseCase>(),
          gh<_i69.SaveFingerPrintUseCase>(),
        ));
    gh.lazySingleton<_i71.SignUpRemoteDataSource>(
        () => _i71.SignUpRemoteDataSourceImpl(
              gh<_i3.FirebaseAuth>(),
              gh<_i43.SignupApi>(),
            ));
    gh.lazySingleton<_i72.SignUpRepository>(
        () => _i72.SignUpRepositoryImpl(gh<_i71.SignUpRemoteDataSource>()));
    gh.lazySingleton<_i73.AddAdsCubit>(
        () => _i73.AddAdsCubit(categoryRepo: gh<_i52.CategoryRepo>()));
    gh.factory<_i74.CategoryCubit>(
        () => _i74.CategoryCubit(categoryRepo: gh<_i52.CategoryRepo>()));
    gh.factory<_i75.CategoryProductCubit>(
        () => _i75.CategoryProductCubit(categoryRepo: gh<_i52.CategoryRepo>()));
    gh.lazySingleton<_i76.SignUpCubit>(
        () => _i76.SignUpCubit(gh<_i72.SignUpRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i77.RegisterModule {}

class _$DioFactory extends _i78.DioFactory {}

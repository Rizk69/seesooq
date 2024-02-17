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
import 'package:opensooq/core/network/api/category_api.dart' as _i46;
import 'package:opensooq/core/network/api/home_user_api.dart' as _i12;
import 'package:opensooq/core/network/api/location_api.dart' as _i18;
import 'package:opensooq/core/network/api/login_api.dart' as _i21;
import 'package:opensooq/core/network/api/notification_api.dart' as _i26;
import 'package:opensooq/core/network/api/packages_api.dart' as _i30;
import 'package:opensooq/core/network/api/setting_api.dart' as _i34;
import 'package:opensooq/core/network/api/signup_api.dart' as _i40;
import 'package:opensooq/core/network/api/wallet_api.dart' as _i42;
import 'package:opensooq/core/network/dio_factory.dart' as _i75;
import 'package:opensooq/core/network/mock_interceptor.dart' as _i6;
import 'package:opensooq/core/network/network_info.dart' as _i8;
import 'package:opensooq/core/utils/cache_helper.dart' as _i10;
import 'package:opensooq/core/utils/navigator.dart' as _i7;
import 'package:opensooq/di.dart' as _i74;
import 'package:opensooq/future/category/data/data_sources/category_remote_data_source.dart'
    as _i47;
import 'package:opensooq/future/category/data/repositories/category_repository.dart'
    as _i50;
import 'package:opensooq/future/category/presentation/cubit/category_cubit.dart'
    as _i71;
import 'package:opensooq/future/category/presentation/cubit/details_category_cubit.dart'
    as _i54;
import 'package:opensooq/future/category_product/data/data_sources/category_remote_data_source.dart'
    as _i48;
import 'package:opensooq/future/category_product/data/repositories/category_repo.dart'
    as _i49;
import 'package:opensooq/future/category_product/presentation/cubit/add_ads_cubit.dart'
    as _i70;
import 'package:opensooq/future/category_product/presentation/cubit/category_product_cubit.dart'
    as _i72;
import 'package:opensooq/future/home/data/data_sources/home_user_remote_data_source.dart'
    as _i13;
import 'package:opensooq/future/home/data/repositories/home_user_repo.dart'
    as _i14;
import 'package:opensooq/future/location/data/data_sources/location_remote_data_source.dart'
    as _i19;
import 'package:opensooq/future/location/data/repositories/location_repo_impl.dart'
    as _i20;
import 'package:opensooq/future/login/data/datasources/login_local_data_source.dart'
    as _i22;
import 'package:opensooq/future/login/data/datasources/login_remote_data_source.dart'
    as _i23;
import 'package:opensooq/future/login/data/repositories/login_repo_impl.dart'
    as _i25;
import 'package:opensooq/future/login/domain/repositories/login_repo.dart'
    as _i24;
import 'package:opensooq/future/login/domain/usecase/change_password.dart'
    as _i52;
import 'package:opensooq/future/login/domain/usecase/forget_password.dart'
    as _i55;
import 'package:opensooq/future/login/domain/usecase/get_user_local.dart'
    as _i60;
import 'package:opensooq/future/login/domain/usecase/verfy_forget_otp.dart'
    as _i41;
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart'
    as _i64;
import 'package:opensooq/future/notification/data/datasources/notification_remote_data_source.dart'
    as _i27;
import 'package:opensooq/future/notification/data/repositories/notification_repository_impl.dart'
    as _i29;
import 'package:opensooq/future/notification/domain/repositories/notification_repository.dart'
    as _i28;
import 'package:opensooq/future/notification/domain/usecases/get_notification_usecase.dart'
    as _i61;
import 'package:opensooq/future/notification/presentation/cubit/notification_cubit.dart'
    as _i65;
import 'package:opensooq/future/packages/data/data_sources/packages_remote_data_source.dart'
    as _i31;
import 'package:opensooq/future/packages/data/repositories/packages_repo_impl.dart'
    as _i33;
import 'package:opensooq/future/packages/domain/repositories/packages_repo.dart'
    as _i32;
import 'package:opensooq/future/packages/domain/use_cases/get_package_usecase.dart'
    as _i57;
import 'package:opensooq/future/setting/data/local/data_sources/setting_local_data_source.dart'
    as _i35;
import 'package:opensooq/future/setting/data/repositories/setting_repository_impl.dart'
    as _i38;
import 'package:opensooq/future/setting/domain/repositories/setting_repository.dart'
    as _i37;
import 'package:opensooq/future/setting/domain/use_cases/get_fingerprint_usecase.dart'
    as _i56;
import 'package:opensooq/future/setting/domain/use_cases/save_fingerprint_usecase.dart'
    as _i66;
import 'package:opensooq/future/setting/presentation/cubit/setting_cubit.dart'
    as _i67;
import 'package:opensooq/future/setting1/data/data_sources/setting_remote_data_source.dart'
    as _i36;
import 'package:opensooq/future/setting1/data/repositories/setting_repository.dart'
    as _i39;
import 'package:opensooq/future/signup/data/data_sources/signup_remote_data_source.dart'
    as _i68;
import 'package:opensooq/future/signup/data/repositories/signup_repository.dart'
    as _i69;
import 'package:opensooq/future/signup/presentation/cubit/signup_cubit.dart'
    as _i73;
import 'package:opensooq/future/splash/data/datasources/lang_local_data_sourece.dart'
    as _i15;
import 'package:opensooq/future/splash/data/repositories/locale_repository_impl.dart'
    as _i17;
import 'package:opensooq/future/splash/domain/repositories/locale_repository.dart'
    as _i16;
import 'package:opensooq/future/splash/domain/usecases/change_lang.dart'
    as _i51;
import 'package:opensooq/future/splash/domain/usecases/change_theme.dart'
    as _i53;
import 'package:opensooq/future/splash/domain/usecases/get_saved_lang.dart'
    as _i58;
import 'package:opensooq/future/splash/domain/usecases/get_theme_usecase.dart'
    as _i59;
import 'package:opensooq/future/splash/presentation/cubit/lcoale_cubit.dart'
    as _i63;
import 'package:opensooq/future/wallet/data/data_sources/wallet_remote_data_source.dart'
    as _i43;
import 'package:opensooq/future/wallet/data/repositories/wallet_repo_impl.dart'
    as _i45;
import 'package:opensooq/future/wallet/domain/repositories/wallet_repo.dart'
    as _i44;
import 'package:opensooq/future/wallet/domain/use_cases/get_wallet_usecase.dart'
    as _i62;
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
    gh.factory<_i12.HomeUserApi>(() => _i12.HomeUserApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i13.HomeUserRemoteDataSource>(
        () => _i13.HomeUserRemoteDataSourceImpl(gh<_i12.HomeUserApi>()));
    gh.lazySingleton<_i14.HomeUserRepo>(() => _i14.HomeUserRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i13.HomeUserRemoteDataSource>(),
        ));
    gh.lazySingleton<_i15.LangLocalDataSource>(() =>
        _i15.LangLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i16.LocaleRepository>(() => _i17.LocaleRepositoryImpl(
        langLocalDataSource: gh<_i15.LangLocalDataSource>()));
    gh.factory<_i18.LocationApi>(() => _i18.LocationApi(gh<_i5.Dio>()));
    gh.factory<_i19.LocationRemoteDataSource>(
        () => _i19.LocationRemoteImpl(gh<_i18.LocationApi>()));
    gh.factory<_i20.LocationRepo>(
        () => _i20.LocationRepoImpl(gh<_i19.LocationRemoteDataSource>()));
    gh.factory<_i21.LoginApi>(() => _i21.LoginApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i22.LoginLocalDataSource>(
        () => _i22.LoginLocalDataSourceImpl(gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i23.LoginRemoteDataSource>(
        () => _i23.LoginRemoteDataSourceImpl(gh<_i21.LoginApi>()));
    gh.lazySingleton<_i24.LoginRepository>(() => _i25.LoginRepoImpl(
          gh<_i23.LoginRemoteDataSource>(),
          gh<_i22.LoginLocalDataSource>(),
        ));
    gh.factory<_i26.NotificationApi>(() => _i26.NotificationApi(gh<_i5.Dio>()));
    gh.factory<_i27.NotificationRemoteDataSource>(
        () => _i27.GetUserNotificationRemoteImpl(gh<_i26.NotificationApi>()));
    gh.factory<_i28.NotificationRepository>(
        () => _i29.NotificationRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserRemoteDataSource: gh<_i27.NotificationRemoteDataSource>(),
            ));
    gh.factory<_i30.PackagesApi>(() => _i30.PackagesApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i31.PackagesRemoteDataSource>(() =>
        _i31.PackagesRemoteDataSourceImpl(packagesApi: gh<_i30.PackagesApi>()));
    gh.lazySingleton<_i32.PackagesRepository>(() => _i33.PackagesRepositoryImpl(
        packagesRemoteDataSource: gh<_i31.PackagesRemoteDataSource>()));
    gh.factory<_i34.SettingApi>(() => _i34.SettingApi(gh<_i5.Dio>()));
    gh.factory<_i35.SettingLocalDataSource>(() =>
        _i35.SettingLocalDataSourceImpl(cacheHelper: gh<_i10.CacheHelper>()));
    gh.lazySingleton<_i36.SettingRemoteDataSource>(
        () => _i36.SettingRemoteDataSourceImpl(gh<_i34.SettingApi>()));
    gh.factory<_i37.SettingRepository>(() => _i38.SettingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          settingLocalDataSource: gh<_i35.SettingLocalDataSource>(),
        ));
    gh.lazySingleton<_i39.SettingRepository>(
        () => _i39.SettingRepositoryImpl(gh<_i36.SettingRemoteDataSource>()));
    gh.factory<_i40.SignupApi>(() => _i40.SignupApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i41.VerifyForGetPasswordUserUseCase>(() =>
        _i41.VerifyForGetPasswordUserUseCase(
            loginRepository: gh<_i24.LoginRepository>()));
    gh.factory<_i42.WalletApi>(() => _i42.WalletApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i43.WalletRemoteDataSource>(
        () => _i43.WalletRemoteDataSourceImpl(walletApi: gh<_i42.WalletApi>()));
    gh.lazySingleton<_i44.WalletRepository>(() => _i45.WalletRepositoryImpl(
        walletRemoteDataSource: gh<_i43.WalletRemoteDataSource>()));
    gh.factory<_i46.CategoryApi>(() => _i46.CategoryApi(gh<_i5.Dio>()));
    gh.lazySingleton<_i47.CategoryRemoteDataSource>(
        () => _i47.CategoryRemoteDataSourceImpl(gh<_i46.CategoryApi>()));
    gh.lazySingleton<_i48.CategoryRemoteDataSource>(
        () => _i48.CategoryRemoteDataSourceImpl(gh<_i46.CategoryApi>()));
    gh.lazySingleton<_i49.CategoryRepo>(() => _i49.CategoryRepoImpl(
          gh<_i8.NetworkInfo>(),
          gh<_i48.CategoryRemoteDataSource>(),
        ));
    gh.lazySingleton<_i50.CategoryRepository>(
        () => _i50.CategoryRepositoryImpl(gh<_i47.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i51.ChangeLangUseCase>(() =>
        _i51.ChangeLangUseCase(langRepository: gh<_i16.LocaleRepository>()));
    gh.lazySingleton<_i52.ChangePasswordUserUseCase>(() =>
        _i52.ChangePasswordUserUseCase(
            loginRepository: gh<_i24.LoginRepository>()));
    gh.lazySingleton<_i53.ChangeThemeUseCase>(() =>
        _i53.ChangeThemeUseCase(langRepository: gh<_i16.LocaleRepository>()));
    gh.lazySingleton<_i54.DetailsCategoryCubit>(() => _i54.DetailsCategoryCubit(
        categoryRepository: gh<_i50.CategoryRepository>()));
    gh.lazySingleton<_i55.ForGetPasswordUserUseCase>(() =>
        _i55.ForGetPasswordUserUseCase(
            loginRepository: gh<_i24.LoginRepository>()));
    gh.lazySingleton<_i56.GetFingerPrintUseCase>(() =>
        _i56.GetFingerPrintUseCase(
            settingRepository: gh<_i37.SettingRepository>()));
    gh.lazySingleton<_i57.GetPackagesUseCase>(() => _i57.GetPackagesUseCase(
        packagesRepository: gh<_i32.PackagesRepository>()));
    gh.lazySingleton<_i58.GetSavedLangUseCase>(() =>
        _i58.GetSavedLangUseCase(langRepository: gh<_i16.LocaleRepository>()));
    gh.lazySingleton<_i59.GetThemeUseCase>(() =>
        _i59.GetThemeUseCase(langRepository: gh<_i16.LocaleRepository>()));
    gh.lazySingleton<_i60.GetUserLocalUseCase>(() =>
        _i60.GetUserLocalUseCase(loginRepository: gh<_i24.LoginRepository>()));
    gh.factory<_i61.GetUserNotificationsUseCase>(() =>
        _i61.GetUserNotificationsUseCase(
            notificationRepository: gh<_i28.NotificationRepository>()));
    gh.lazySingleton<_i62.GetWalletUseCase>(() =>
        _i62.GetWalletUseCase(walletRepository: gh<_i44.WalletRepository>()));
    gh.factory<_i63.LocaleCubit>(() => _i63.LocaleCubit(
          getSavedLangUseCase: gh<_i58.GetSavedLangUseCase>(),
          changeLangUseCase: gh<_i51.ChangeLangUseCase>(),
          changeThemeUseCase: gh<_i53.ChangeThemeUseCase>(),
          getThemeUseCase: gh<_i59.GetThemeUseCase>(),
        ));
    gh.lazySingleton<_i64.LoginCubit>(() => _i64.LoginCubit(
          gh<_i24.LoginRepository>(),
          gh<_i55.ForGetPasswordUserUseCase>(),
          gh<_i52.ChangePasswordUserUseCase>(),
        ));
    gh.factory<_i65.NotificationCubit>(() => _i65.NotificationCubit(
        getUserNotificationsUseCase: gh<_i61.GetUserNotificationsUseCase>()));
    gh.lazySingleton<_i66.SaveFingerPrintUseCase>(() =>
        _i66.SaveFingerPrintUseCase(
            settingRepository: gh<_i37.SettingRepository>()));
    gh.factory<_i67.SettingCubit>(() => _i67.SettingCubit(
          gh<_i56.GetFingerPrintUseCase>(),
          gh<_i66.SaveFingerPrintUseCase>(),
        ));
    gh.lazySingleton<_i68.SignUpRemoteDataSource>(
        () => _i68.SignUpRemoteDataSourceImpl(
              gh<_i3.FirebaseAuth>(),
              gh<_i40.SignupApi>(),
            ));
    gh.lazySingleton<_i69.SignUpRepository>(
        () => _i69.SignUpRepositoryImpl(gh<_i68.SignUpRemoteDataSource>()));
    gh.lazySingleton<_i70.AddAdsCubit>(
        () => _i70.AddAdsCubit(categoryRepo: gh<_i49.CategoryRepo>()));
    gh.factory<_i71.CategoryCubit>(
        () => _i71.CategoryCubit(categoryRepo: gh<_i49.CategoryRepo>()));
    gh.factory<_i72.CategoryProductCubit>(
        () => _i72.CategoryProductCubit(categoryRepo: gh<_i49.CategoryRepo>()));
    gh.lazySingleton<_i73.SignUpCubit>(
        () => _i73.SignUpCubit(gh<_i69.SignUpRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i74.RegisterModule {}

class _$DioFactory extends _i75.DioFactory {}

import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/login/presentation/cubit/login_cubit.dart';
import 'package:opensooq/future/user_local_model.dart';

import '../utils/app_strings.dart';
import '../utils/cache_helper.dart';

@Injectable()
class CustomInterceptors extends Interceptor {
  final CacheHelper cacheHelper;

  CustomInterceptors(this.cacheHelper);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    Map<String, dynamic> headers = Map.from(options.headers);
    final user = await cacheHelper.hiveGetDataById<UserLocalModel>(0);
    headers.addAll({
      'accept': 'application/json',
      'Authorization': 'Bearer ${user?.token ?? ''}',
      'App-Language': 'en',
      'user_type': cacheHelper.getData(key: AppStrings.userType) ?? 'user',
    });
    options.headers = headers;
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE[${response.data}] => PATH: ${response.requestOptions.data}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      LoginCubit.get(rootNavigatorKey.currentContext!).deleteLocalUser();
      rootNavigatorKey.currentState?.context.goNamed(
        Routes.login,
      );
    }

    return super.onError(err, handler);
  }
}

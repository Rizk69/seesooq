import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/login/presentation/pages/login_splash.dart';

class LoginSplashRoute extends GoRoute {
  LoginSplashRoute()
      : super(
            path: Routes.loginSplash,
            name: Routes.loginSplash,
            builder: (context, state) => const LoginSplash(),
            routes: []);
}

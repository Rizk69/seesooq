import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/login/presentation/pages/auth_page.dart';
import 'package:opensooq/future/login/presentation/pages/login_splash.dart';
import 'package:opensooq/future/login/presentation/pages/route/login_route.dart';

class LoginSplashRoute extends GoRoute {
  LoginSplashRoute()
      : super(
            path: Routes.loginSplash,
            name: Routes.loginSplash,
            builder: (context, state) => const LoginSplash(),
            routes: [
              ShellRoute(
                  routes: [
                    LoginRoute(),
                  ],
                  pageBuilder: (context, state, child) =>
                      NoTransitionPage(child: BaseAuthPage(child: child))),
            ]);
}

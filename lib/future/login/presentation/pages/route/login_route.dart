import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/config/routes/go_redirect.dart';
import 'package:opensooq/config/routes/redirect/auth_redirect.dart';
import 'package:opensooq/future/login/presentation/pages/route/forget_password_route.dart';
import 'package:opensooq/future/signup/presentation/route/signup_route.dart';

import '../login_page.dart';

class LoginRoute extends GoRoute {
  LoginRoute()
      : super(
            path: Routes.login,
            redirect: GoRedirect.compose([AuthRedirect()]),
            name: Routes.login,
            pageBuilder: (context, state) => const NoTransitionPage(
                  child: LoginPage(),
                ),
            routes: [SignupRoute(), ForgetPasswordPRoute()]);
}

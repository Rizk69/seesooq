import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/login/presentation/pages/confirm_code_login_page.dart';
import 'package:opensooq/future/signup/presentation/route/unlock_password_route.dart';

class ConfirmCodeRoute extends GoRoute {
  ConfirmCodeRoute()
      : super(
            path: Routes.confirmCode,
            name: Routes.confirmCode,
            pageBuilder: (context, state) {
              String? recoveryEmail = (state.extra as String?) ?? '';

              return NoTransitionPage(
                  child: ConfirmCodeLoginPage(
                recoveryEmail: recoveryEmail,
              ));
            },
            routes: [UnlockPasswordRoute()]);
}

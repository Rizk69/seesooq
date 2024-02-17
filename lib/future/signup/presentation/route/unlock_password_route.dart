import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/signup/presentation/pages/unlock_password_page.dart';

class UnlockPasswordRoute extends GoRoute {
  UnlockPasswordRoute()
      : super(
          path: Routes.unLockPassword,
          name: Routes.unLockPassword,
          pageBuilder: (context, state) {
            var email = state.extra as String;
            return NoTransitionPage(
                child: UnlockPasswordPage(
              recoveryEmail: email,
            ));
          },
        );
}

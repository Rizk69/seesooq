import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/signup/presentation/pages/forget_password_page.dart';
import 'package:opensooq/future/signup/presentation/route/confirm_code_route.dart';

class ForgetPasswordPRoute extends GoRoute {
  ForgetPasswordPRoute()
      : super(
            path: Routes.forgetPasswordPRoute,
            name: Routes.forgetPasswordPRoute,
            builder: (context, state) {
              String? recoveryEmail = (state.extra as String?) ?? '';
              return ForgetPasswordPage(recoveryEmail: recoveryEmail);
            },
            routes: [ConfirmCodeRoute()]);
}

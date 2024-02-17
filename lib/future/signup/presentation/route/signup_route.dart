import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/config/routes/go_redirect.dart';
import 'package:opensooq/config/routes/redirect/auth_redirect.dart';
import 'package:opensooq/future/signup/presentation/pages/confirm_code_page.dart';
import 'package:opensooq/future/signup/presentation/pages/signup_view.dart';

class SignupRoute extends GoRoute {
  SignupRoute()
      : super(
            path: Routes.signUp,
            name: Routes.signUp,
            redirect: GoRedirect.compose([AuthRedirect()]),
            pageBuilder: (context, state) => const NoTransitionPage(child: SignUpView()),
            routes: [
              GoRoute(
                path: Routes.confirmCodeSignUp,
                name: Routes.confirmCodeSignUp,
                pageBuilder: (context, state) => const NoTransitionPage(child: ConfirmCodePage(recoveryEmail: '')),
              ),
            ]);
}

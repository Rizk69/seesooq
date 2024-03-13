import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/payment_gateway/presentation/pages/payment_success_page.dart';

class PaymentSuccessRoute extends GoRoute {
  PaymentSuccessRoute()
      : super(
          path: Routes.paymentSuccess,
          name: Routes.paymentSuccess,
          pageBuilder: (context, state) {
            final args = state.extra as String?;
            return NoTransitionPage(
                child: PaymentSuccessPage(
              type: args,
            ));
          },
        );
}

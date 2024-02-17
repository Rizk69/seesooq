import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/payment_gateway/presentation/pages/payment_stripe_page.dart';

class PaymentGateway extends GoRoute {
  PaymentGateway()
      : super(
          path: Routes.paymentGateway,
          name: Routes.paymentGateway,
          pageBuilder: (context, state) {
            var args = state.extra as String?;
            return NoTransitionPage(
                child: PaymentStripePage(
              price: (int.parse(args.toString()) * 100).toString(),
            ));
          },
        );
}

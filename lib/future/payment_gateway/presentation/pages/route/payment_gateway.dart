import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/payment_gateway/presentation/pages/payment_stripe_page.dart';
import 'package:opensooq/future/payment_gateway/presentation/pages/route/payment_success.dart';
import 'package:opensooq/future/wallet/presentation/pages/wallet_page.dart';

class PaymentGateway extends GoRoute {
  PaymentGateway()
      : super(
            path: Routes.paymentGateway,
            name: Routes.paymentGateway,
            pageBuilder: (context, state) {
              String args = (state.extra as String?) ?? '0';
              String type = state.uri.queryParameters['type'] ?? '0';

              bool isNumber = int.tryParse(args) != null;
              return NoTransitionPage(
                  child: PaymentStripePage(
                price: isNumber ? ((int.tryParse(args.toString())! * 100)).toString() ?? '0' : '0',
                typeTransaction: type == 'wallet' ? TypeTransaction.wallet : TypeTransaction.package,
              ));
            },
            routes: [
              PaymentSuccessRoute(),
            ]);
}

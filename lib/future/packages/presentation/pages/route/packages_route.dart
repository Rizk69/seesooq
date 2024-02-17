import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/packages/presentation/pages/package_page.dart';
import 'package:opensooq/future/payment_gateway/presentation/pages/route/payment_gateway.dart';

class PackagesRoute extends GoRoute {
  PackagesRoute()
      : super(path: Routes.packages, name: Routes.packages, pageBuilder: (context, state) => const NoTransitionPage(child: PackagePage()), routes: [
          PaymentGateway(),
        ]);
}

import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/wallet/presentation/pages/wallet_page.dart';

class WalletRoute extends GoRoute {
  WalletRoute()
      : super(
          path: Routes.wallet,
          name: Routes.wallet,
          pageBuilder: (context, state) => const NoTransitionPage(child: WalletPage()),
        );
}

import 'package:go_router/go_router.dart';
import 'package:opensooq/future/category_product/presentation/pages/ads_pages/show_ads_by_add_ads.dart';

class ViewAdsRoute extends StatefulShellBranch {
  ViewAdsRoute()
      : super(
          routes: [
            GoRoute(
              path: 'view_ads',
              name: 'view_ads',
              pageBuilder: (context, state) => const NoTransitionPage(child: ShowAdsByAddingScreen()),
            ),
          ],
        );
}

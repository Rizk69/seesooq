import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/category_product/presentation/pages/ads_pages/details_ads_page.dart';

class DetailsAdsRoute extends StatefulShellBranch {
  DetailsAdsRoute()
      : super(
          routes: [
            GoRoute(
              path: Routes.uploadAdsPage,
              name: Routes.uploadAdsPage,
              pageBuilder: (context, state) {
                return const NoTransitionPage(child: DetailsAdsPage());
              },
            ),
          ],
        );
}

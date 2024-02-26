import 'package:go_router/go_router.dart';
import 'package:opensooq/future/category_product/presentation/pages/ads_pages/location_page.dart';

class LocationDetailsAdsRoute extends StatefulShellBranch {
  LocationDetailsAdsRoute()
      : super(
          routes: [
            GoRoute(
              path: 'location_details_ads',
              name: 'location_details_ads',
              pageBuilder: (context, state) => const NoTransitionPage(child: LocationAdsPage()),
            ),
          ],
        );
}

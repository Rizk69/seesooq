import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/category_product/presentation/pages/ads_pages/get_ads_view_page.dart';

class GetAdsViewRoute extends GoRoute {
  GetAdsViewRoute()
      : super(
          path: Routes.getAdsViewRoute,
          name: Routes.getAdsViewRoute,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: AdsViewPage(),
          ),
        );
}

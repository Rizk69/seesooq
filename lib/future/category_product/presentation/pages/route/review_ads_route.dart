import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/category_product/presentation/pages/ads_pages/review_ads_page.dart';

class ReviewAdsRoute extends GoRoute {
  ReviewAdsRoute()
      : super(
          path: Routes.reviewAdsRoute,
          name: Routes.reviewAdsRoute,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ReviewAdsPage(),
          ),
        );
}

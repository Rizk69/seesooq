import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/favorite/presentation/pages/fav_page.dart';
import 'package:opensooq/future/myads/presentation/screens/my_ads_page.dart';

class MyAdsRoute extends GoRoute {
  MyAdsRoute()
      : super(
    path: Routes.myAds,
    name: Routes.myAds,
    pageBuilder: (context, state) => const NoTransitionPage(child: MyAdsPage()),
  );
}

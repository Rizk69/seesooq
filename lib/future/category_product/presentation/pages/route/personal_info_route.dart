import 'package:go_router/go_router.dart';
import 'package:opensooq/future/category_product/presentation/pages/ads_pages/person_alInfo_ads.dart';

class PersonalInfoAdsRoute extends StatefulShellBranch {
  PersonalInfoAdsRoute()
      : super(
          routes: [
            GoRoute(
              path: 'personal_info_ads',
              name: 'personal_info_ads',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: PersonalInfoAds()),
            ),
          ],
        );
}

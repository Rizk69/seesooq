import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/reels/routing/reel_route.dart';

import '../presentation/pages/my_reels_view.dart';
import '../presentation/pages/reels_view.dart';

class ReelsRoute extends GoRoute {
  ReelsRoute()
      : super(path: Routes.reels, name: Routes.reels, pageBuilder: (context, state) => const NoTransitionPage(child: ReelsView()), routes: [
          ReelRoute(),
          MyReelsRoute(),
        ]);
}

class MyReelsRoute extends GoRoute {
  MyReelsRoute() : super(path: Routes.myReels, name: Routes.myReels, builder: (context, state) => const MyReelsView(), routes: []);
}

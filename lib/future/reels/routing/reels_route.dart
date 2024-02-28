import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';

import '../presentation/reels_view.dart';

class ReelsRoute extends GoRoute {
  ReelsRoute()
      : super(
    path: Routes.reels,
    name: Routes.reels,
    pageBuilder: (context, state) => const NoTransitionPage(child: ReelsView()),
  );
}

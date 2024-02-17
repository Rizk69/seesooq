import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/favorite/presentation/pages/fav_page.dart';

class FavoriteRoute extends GoRoute {
  FavoriteRoute()
      : super(
          path: Routes.favorite,
          name: Routes.favorite,
          pageBuilder: (context, state) => const NoTransitionPage(child: FavoritePage()),
        );
}

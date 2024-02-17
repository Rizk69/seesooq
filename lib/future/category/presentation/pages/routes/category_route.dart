import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/category/presentation/pages/category_view.dart';
import 'package:opensooq/future/category/presentation/pages/routes/details_category_route_route.dart';

class CategoryRoute extends GoRoute {
  CategoryRoute()
      : super(
          path: Routes.categoryView,
          name: Routes.categoryView,
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: CategoryView()),
          routes: [
            DetailsCategoryRoute(),
          ],
        );
}

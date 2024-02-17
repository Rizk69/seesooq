import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/category/presentation/pages/details_category_view.dart';
import 'package:opensooq/future/category/presentation/pages/routes/one_category_route_route.dart';

class DetailsCategoryRoute extends GoRoute {
  DetailsCategoryRoute()
      : super(
            path: Routes.detailsCategoryView,
            name: Routes.detailsCategoryView,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                child: DetailsCategoryView(
                  categoryName: state.uri.queryParameters['categoryName'] ?? '',
                  categoryId: state.uri.queryParameters['categoryId'] ?? '',
                ),
              );
            },
            routes: [OneCategoryRoute()]);
}

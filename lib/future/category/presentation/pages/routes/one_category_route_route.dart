import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/category/presentation/pages/one_category_view.dart';

class OneCategoryRoute extends GoRoute {
  OneCategoryRoute()
      : super(
          path: Routes.oneCategoryView,
          name: Routes.oneCategoryView,
          pageBuilder: (context, state) {
            var data = state.extra as Map<String, dynamic>;
            return NoTransitionPage(
              child: OneCategoryView(
                categoryName: data['categoryName'].toString(),
                categoryId: data['categoryId'].toString(),
                cubit: data['cubit'],
              ),
            );
          },
        );
}

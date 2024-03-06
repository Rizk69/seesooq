import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/blogs/presentatin/pages/blogs_page.dart';
import 'package:opensooq/future/blogs/presentatin/pages/route/blog_route.dart';

class BlogsRoute extends GoRoute {
  BlogsRoute()
      : super(
            path: Routes.blogsRoute,
            name: Routes.blogsRoute,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: BlogsPage());
            },
            routes: [
              BlogRoute(),
            ]);
}

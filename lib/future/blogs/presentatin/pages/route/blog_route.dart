import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/blogs/presentatin/pages/blog_page.dart';

class BlogRoute extends GoRoute {
  BlogRoute()
      : super(
          path: Routes.blogRoute,
          name: Routes.blogRoute,
          pageBuilder: (context, state) {
            return NoTransitionPage(child: BlogPage(idBlog: state.extra as int));
          },
        );
}

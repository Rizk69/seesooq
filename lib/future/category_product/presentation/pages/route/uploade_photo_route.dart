import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/category_product/presentation/pages/ads_pages/upload_photo_page.dart';

class UploadPhotoRoute extends GoRoute {
  UploadPhotoRoute()
      : super(
          path: Routes.uploadPhoto,
          name: Routes.uploadPhoto,
          pageBuilder: (context, state) {
            var extra = state.extra == null ? {} : state.extra as Map<String, dynamic>;
            return NoTransitionPage(
                child: UploadPhotoPage(
              categoryName: extra['categoryName'] ?? '',
              details: extra['details'] ?? '',
            ));
          },
        );
}

import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';



import '../presentation/pages/edit_profile_page.dart';
import '../presentation/pages/sucsses_edit_profile_page.dart';

class EditProfileRoute extends GoRoute {
  EditProfileRoute()
      : super(
            path: Routes.editProfile,
            name: Routes.editProfile,
            builder: (context, state) => const EditProfilePage(),
            routes: [
              SucssusProfileRoute(),
            ]);
}

class SucssusProfileRoute extends GoRoute {
  SucssusProfileRoute()
      : super(
            path: Routes.sucsseEditProfile,
            name: Routes.sucsseEditProfile,
            builder: (context, state) => SucssesEditProfile(),
            routes: []);
}

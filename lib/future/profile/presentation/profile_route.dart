import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/profile/presentation/pages/profile_page.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/cubit/edit_profile_cubit.dart';
import 'package:opensooq/future/setting/presentation/edit_profile/presentation/pages/edit_profile_page.dart';

class ProfileRoute extends GoRoute {
  ProfileRoute()
      : super(path: Routes.profilePage, name: Routes.profilePage, builder: (context, state) => const ProfilePage(), routes: [
          EditProfileRoute(),
        ]);
}

class EditProfileRoute extends GoRoute {
  EditProfileRoute()
      : super(
            path: Routes.editProfile,
            name: Routes.editProfile,
            builder: (context, state) => BlocProvider(
                  create: (context) => EditProfileCubit(),
                  child: const EditProfilePage(),
                ),
            routes: []);
}

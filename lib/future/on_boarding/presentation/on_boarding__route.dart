import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/on_boarding/presentation/screen/on_boarding_view.dart';

class OnBoardingRoute extends GoRoute {
  OnBoardingRoute()
      : super(
      path: Routes.onboarding,
      name: Routes.onboarding,
      builder: (context, state) =>  OnBoardingScreen(),
      routes: []);
}

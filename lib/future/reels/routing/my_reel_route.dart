import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/reels/data/model/my_reels_model.dart';

import 'package:opensooq/future/reels/presentation/pages/view_my_reels.dart';

class MyReelRoute extends GoRoute {
  MyReelRoute()
      : super(
            path: Routes.myReelView,
            name: Routes.myReelView,
            pageBuilder: (context, state) => CustomTransitionPage(
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    // open from top

                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.0, -1.0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                  child: ViewMyReel(
                    reels: state.extra as List<MyReels>,
                  ),
                ));
}

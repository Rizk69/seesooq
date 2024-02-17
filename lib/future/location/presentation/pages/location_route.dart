import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/future/location/presentation/pages/location_view.dart';

class LocationRoute extends GoRoute{
  LocationRoute() : super(
    path: 'location',
    name: 'location',

    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: const LocationView(),
        transitionsBuilder:
            (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
    },
  );
}
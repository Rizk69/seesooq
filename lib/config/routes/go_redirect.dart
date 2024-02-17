import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

abstract class GoRedirect {
  static FutureOr<String?> Function(
      BuildContext context,
      GoRouterState state,
      ) compose(List<GoRedirect> redirects) {
    return (context, state) async {
      for (final redirect in redirects) {
        final path = await redirect(context, state);
        if (path != null) return path;
      }
      return null;
    };
  }

  FutureOr<String?> call(BuildContext context, GoRouterState state);
}

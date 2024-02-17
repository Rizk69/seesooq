import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PersonalInfoAdsRoute extends StatefulShellBranch {
  PersonalInfoAdsRoute()
      : super(
          routes: [
            GoRoute(
              path: 'personal_info_ads',
              name: 'personal_info_ads',
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: Text('Text')),
            ),
          ],
        );
}

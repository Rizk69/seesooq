import 'package:easy_localization/easy_localization.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/utils/app_colors.dart';

class RootAdsPage extends StatefulWidget {
  const RootAdsPage({Key? key, required this.statefulNavigationShell}) : super(key: key);
  final StatefulNavigationShell statefulNavigationShell;

  @override
  State<RootAdsPage> createState() => _RootAdsPageState();
}

class _RootAdsPageState extends State<RootAdsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              pinned: true,
              surfaceTintColor: Colors.white,
              toolbarHeight: kToolbarHeight + 40,
              flexibleSpace: EasyStepper(
                activeStep: widget.statefulNavigationShell.currentIndex,
                unreachedStepTextColor: Colors.grey,
                finishedStepTextColor: AppColors.primary,
                activeStepBackgroundColor: AppColors.primary.withOpacity(0.1),
                onStepReached: (index) {
                  _onTap(context, index);
                  setState(() {});
                },
                activeStepBorderType: BorderType.dotted,
                unreachedStepBorderType: BorderType.normal,
                showLoadingAnimation: false,
                steps: [
                  EasyStep(title: "adDetails".tr(), icon: const Icon(CupertinoIcons.arrow_up_left_arrow_down_right), enabled: true),
                  EasyStep(
                    title: "locationDetails".tr(),
                    icon: const Icon(
                      CupertinoIcons.location_solid,
                    ),
                  ),
                  EasyStep(
                    title: "info".tr(),
                    icon: const Icon(CupertinoIcons.person),
                  ),
                  EasyStep(
                    title: "showAd".tr(),
                    icon: const Icon(Icons.remove_red_eye_sharp),
                  ),
                ],
                direction: Axis.horizontal,
                lineType: LineType.normal,
                activeLineColor: AppColors.primary,
                activeStepIconColor: AppColors.primary,
                unreachedLineColor: AppColors.grey.withOpacity(0.5),
              )),
          SliverFillRemaining(
            hasScrollBody: true,
            fillOverscroll: true,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: widget.statefulNavigationShell,
            ),
          ),
        ],
      ),
    );
  }

  void _onTap(BuildContext context, int index) {
    // When navigating to a new branch, it's recommended to use the goBranch
    // method, as doing so makes sure the last navigation state of the
    // Navigator for the branch is restored.
    widget.statefulNavigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.statefulNavigationShell.currentIndex,
    );
  }
}

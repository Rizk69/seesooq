import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

void showTutorial(List<TargetFocus> targets, BuildContext context) {
  TutorialCoachMark(
      targets: targets, // List<TargetFocus>
      colorShadow: Colors.red, // DEFAULT Colors.black
      alignSkip: Alignment.bottomRight,
      textSkip: "SKIP",
      paddingFocus: 10,
      focusAnimationDuration: Duration(milliseconds: 500),
      unFocusAnimationDuration: Duration(milliseconds: 500),
      pulseAnimationDuration: Duration(milliseconds: 500),
      showSkipInLastTarget: true,
      initialFocus: 0,
      useSafeArea: true,
      onFinish: () {
        print("finish");
      },
      onClickTargetWithTapPosition: (target, tapDetails) {
        print("target: $target");
        print("clicked at position local: ${tapDetails.localPosition} - global: ${tapDetails.globalPosition}");
      },
      onClickTarget: (target) {
        print(target);
      },
      onSkip: () {
        return true;
      }).show(context: context);

  // tutorial.skip();
  // tutorial.finish();
  // tutorial.next(); // call next target programmatically
  // tutorial.previous(); // call previous target programmatically
  // tutorial.goTo(3); // call target programmatically by index
}

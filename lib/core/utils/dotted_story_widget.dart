import 'dart:math';

import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/app_colors.dart';
import 'package:opensooq/future/home/data/models/users_story_model.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_state.dart';

class DottedBorder extends CustomPainter {
  //number of stories
  final List<StoriesData> story;
  //length of the space arc (empty one)
  final int spaceLength;
  //start of the arc painting in degree(0-360)
  double startOfArcInDegree = 0;

  DottedBorder({required this.story, this.spaceLength = 10});

  //drawArc deals with rads, easier for me to use degrees
  //so this takes a degree and change it to rad
  double inRads(double degree) {
    return (degree * pi) / 180;
  }

  @override
  bool shouldRepaint(DottedBorder oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    //circle angle is 360, remove all space arcs between the main story arc (the number of spaces(stories) times the  space length
    //then subtract the number from 360 to get ALL arcs length
    //then divide the ALL arcs length by number of Arc (number of stories) to get the exact length of one arc
    double arcLength = (360 - (story.length * spaceLength)) / story.length;

    //be careful here when arc is a negative number
    //that happens when the number of spaces is more than 360
    //feel free to use what logic you want to take care of that
    //note that numberOfStories should be limited too here
    if (arcLength <= 0) {
      arcLength = 360 / spaceLength - 1;
    }

    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    //looping for number of stories to draw every story arc
    for (int i = 0; i < story.length; i++) {
      print('story.length ${story[i].isViewed}');
      //printing the arc
      canvas.drawArc(
          rect,
          inRads(startOfArcInDegree),
          //be careful here is:  "double sweepAngle", not "end"
          inRads(arcLength),
          false,
          Paint()
            //here you can compare your SEEN story index with the arc index to make it grey
            // ..color = i == 0 || i == 1 ? Colors.grey : Colors.teal
            ..strokeWidth = 4.0
            ..shader = LinearGradient(
              colors: [
                (story[i].isViewed ?? false) ? AppColors.grey : AppColors.primary,
                (story[i].isViewed ?? false) ? AppColors.grey : AppColors.primary.withOpacity(0.5),
              ],
            ).createShader(rect)
            ..style = PaintingStyle.stroke);

      //the logic of spaces between the arcs is to start the next arc after jumping the length of space
      startOfArcInDegree += arcLength + spaceLength;
    }
  }
}

class DottedBorderExample extends StatelessWidget {
  final List<StoriesData> story;
  final int index;
  final StoryUserState state;
  const DottedBorderExample({Key? key, required this.story, required this.index, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: CustomPaint(
        painter: DottedBorder(story: story, spaceLength: story.length <= 1 ? 0 : 6),
      ),
    );
  }
}

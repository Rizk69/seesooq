import 'package:flutter/material.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';
import 'package:story_view/story_view.dart';

class ViewReel extends StatefulWidget {
  const ViewReel({super.key, required this.reel});

  final ReelsModel reel;
  @override
  _ViewReelState createState() => _ViewReelState();
}

class _ViewReelState extends State<ViewReel> {
  final StoryController controller = StoryController();
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return StoryView(
      controller: controller,
      onStoryShow: (value) {
        // error in this line
      },
      progressPosition: ProgressPosition.top,
      inline: false,
      onComplete: () {
        Navigator.pop(context);
      },
      storyItems: [
        StoryItem.pageVideo(
          widget.reel.videoReel!,
          controller: controller,
          duration: const Duration(seconds: 10),
          caption: widget.reel.description!,
          imageFit: BoxFit.contain,
        ),
      ],
    );
  }
}

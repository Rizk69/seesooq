import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';
import 'package:opensooq/future/reels/presentation/bloc/reels_bloc.dart';
import 'package:story_view/story_view.dart';

class ViewReel extends StatefulWidget {
  const ViewReel({super.key, required this.reels});

  final List<Reels> reels;
  @override
  _ViewReelState createState() => _ViewReelState();
}

class _ViewReelState extends State<ViewReel> {
  final StoryController controller = StoryController();
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReelsBloc, ReelsState>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.black,
              leading: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<ReelsBloc>().add(ReelsEvent.addFavReel(widget.reels[state.page].id.toString() ?? '', 0));
                    },
                    icon: const Icon(Icons.favorite),
                  ),
                ],
              )),
          body: StoryView(
            controller: controller,
            inline: false,
            onVerticalSwipeComplete: (direction) {
              if (direction == Direction.down) {
                Navigator.pop(context);
              }
            },
            onStoryShow: (value, index) {
              ReelsBloc.get(context).add(ReelsEvent.viewReel(widget.reels[index].id.toString(), index));
            },
            progressPosition: ProgressPosition.top,
            onComplete: () {
              Navigator.pop(context);
            },
            storyItems: widget.reels
                .map((e) => StoryItem.pageVideo(
                      e.video!,
                      controller: controller,
                    ))
                .toList(),
          ),
        ),
      );
    });
  }
}

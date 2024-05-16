import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/cache_network_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';

class ReelsListWidget extends StatefulWidget {
  const ReelsListWidget({super.key, required this.reels});

  final List<UserReels> reels;

  @override
  _ReelsListWidgetState createState() => _ReelsListWidgetState();
}

class _ReelsListWidgetState extends State<ReelsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AlignedGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              context.goNamed(Routes.reelView, extra: widget.reels[index].reels);
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 2),
                    blurRadius: 9,
                  )
                ],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(19),
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.darken,
                          ),
                          filterQuality: FilterQuality.high,
                          image: NetworkImage(
                            widget.reels[index].image ?? ' ',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: CacheNetworkImageApp(
                                urlImage: widget.reels[index].image ?? ' ',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TranslateText(
                                  text: widget.reels[index].name ?? ' ',
                                  styleText: StyleText.h6,
                                  colorText: Colors.white,
                                  textDecoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                // TranslateText(
                                //   text: 'widget.reels[index].userReels?.name ?? ' '',
                                //   styleText: StyleText.h6,
                                //   colorText: Colors.white,
                                //   textDecoration: TextDecoration.none,
                                //   fontWeight: FontWeight.bold,
                                //   fontSize: 14,
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: widget.reels.length,
      ),
    );
  }
}

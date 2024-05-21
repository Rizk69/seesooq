import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/cache_network_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/favorite/presentation/cubit/favorite_state.dart';
import 'package:opensooq/future/reels/data/model/reels_model.dart';

class FavoriteReels extends StatelessWidget {
  final FavoriteState state;
  const FavoriteReels({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AlignedGridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final reelData = state.favReelsModel?.data?[index];
          if (reelData == null) return Container();

          return InkWell(
            onTap: () {
              context.pushNamed(
                Routes.reelView,
                extra: [
                  Reels(
                      id: reelData.reelId?.toInt(),
                      createAt: reelData.createdAt,
                      isFav: 0,
                      video: reelData.video)
                ],
              );
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
                      height:
                      MediaQuery.of(context).size.height /
                          3.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5),
                            BlendMode.darken,
                          ),
                          filterQuality: FilterQuality.high,
                          image: NetworkImage(
                            reelData.user?.image ??
                                'https://example.com/default_image.png',
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
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius:
                              BorderRadius.circular(30),
                              child: CacheNetworkImageApp(
                                urlImage: reelData
                                    .user?.image ??
                                    'https://example.com/default_image.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                TranslateText(
                                  text: reelData.user?.name ??
                                      'Unknown User',
                                  styleText: StyleText.h6,
                                  colorText: Colors.white,
                                  textDecoration:
                                  TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
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
        itemCount: state.favReelsModel?.data?.length ?? 0,
      ),
    );
  }
}

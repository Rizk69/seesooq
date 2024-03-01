import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerAdsSharedWidget extends StatefulWidget {
  const BannerAdsSharedWidget({super.key, required this.images, required this.onPageChanged, required this.height, this.isMemoryImage = false});
  final List<dynamic> images;
  final bool isMemoryImage;

  final double height;

  final Function(int) onPageChanged;
  @override
  State<BannerAdsSharedWidget> createState() => _BannerAdsSharedWidgetState();
}

class _BannerAdsSharedWidgetState extends State<BannerAdsSharedWidget> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height,
          width: context.width,
          child: PageView.builder(
            pageSnapping: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            controller: controller,
            padEnds: true,
            onPageChanged: widget.onPageChanged,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: widget.isMemoryImage
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.file(
                              widget.images[index],
                              fit: BoxFit.cover,
                              errorBuilder: (BuildContext context, t, r) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          )
                        : widget.images.toString().contains('.svg')
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: SvgPicture.network(
                                  widget.images[index],
                                  fit: BoxFit.cover,
                                  placeholderBuilder: (BuildContext context) => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  widget.images[index],
                                  fit: BoxFit.cover,
                                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  },
                                ),
                              )),
              );
            },
            scrollDirection: Axis.horizontal,
            allowImplicitScrolling: false,
            itemCount: widget.images.length,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmoothPageIndicator(
              count: widget.images.length,
              onDotClicked: (index) {
                controller.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
              },
              effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: HexColor('#4C0497'),
                  paintStyle: PaintingStyle.stroke,
                  dotColor: Colors.grey,
                  spacing: 5),
              controller: controller,
            ),
          ],
        ),
      ],
    );
  }
}

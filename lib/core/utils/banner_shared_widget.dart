import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSharedWidget extends StatefulWidget {
  const BannerSharedWidget({super.key, required this.length, required this.onPageChanged, required this.height});
  final int length;

  final double height;

  final Function(int) onPageChanged;
  @override
  State<BannerSharedWidget> createState() => _BannerSharedWidgetState();
}

class _BannerSharedWidgetState extends State<BannerSharedWidget> {
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
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(image: AssetImage('car'.toPng), fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      width: context.width,
                      height: widget.height,
                      child: Image.asset(
                        'banner'.toPng,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      right: 20,
                      top: 25,
                      child: TranslateText(
                        text: 'Cars  on the ssss',
                        styleText: StyleText.h4,
                        colorText: Colors.white,
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 15,
                      child: SizedBox(
                        width: 140,
                        height: 50,
                        child: CustomButtonWidget(color: Colors.white, text: 'Explore', onPressed: () {}),
                      ),
                    ),
                  ],
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            allowImplicitScrolling: false,
            itemCount: widget.length,
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
              count: widget.length,
              onDotClicked: (index) {
                controller.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
              },
              effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: HexColor('#545FDD'),
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

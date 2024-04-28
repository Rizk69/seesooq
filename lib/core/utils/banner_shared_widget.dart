import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opensooq/core/utils/custom_button_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/something_went_wrong.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/home_state.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            if (state.bannersModel?.data?.isEmpty ?? true)
              const SizedBox(
                height: 250,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            if (state.bannersModel?.data?.isNotEmpty ?? false)
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
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: context.width,
                            height: widget.height,
                            child: Image.network(state.bannersModel?.data?[index].album ?? '', fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                              return const SomThingWentWrongWidget(
                                height: 100,
                                width: 100,
                              );
                            }),
                          ),
                          Positioned(
                            right: 20,
                            top: 25,
                            child: TranslateText(
                              text: state.bannersModel?.data?[index].title ?? 'Cars  on the ssss',
                              styleText: StyleText.h4,
                              colorText: Colors.white,
                            ),
                          ),
                          if (state.bannersModel?.data?[index].id != null)
                            Positioned(
                              right: 20,
                              bottom: 15,
                              child: SizedBox(
                                width: 140,
                                height: 50,
                                child: CustomButtonWidget(
                                    color: Colors.white,
                                    text: 'Explore',
                                    onPressed: () {
                                      launchUrl(Uri.parse('https://google.com'));
                                      // context.pushNamed('view_ads_home', extra: state.bannersModel?.data?[index].id.toString());
                                    }),
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
      },
    );
  }
}

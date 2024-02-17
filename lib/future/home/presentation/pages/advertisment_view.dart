import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/core/utils/banner_ads_shared_widget.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/utils/svg_custom_image.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/category/data/models/advertisment_model.dart';

class ShowAdsByHomeScreen extends StatefulWidget {
  const ShowAdsByHomeScreen({super.key, required this.item});
  final Data item;

  @override
  State<ShowAdsByHomeScreen> createState() => _ShowAdsByHomeScreenState();
}

class _ShowAdsByHomeScreenState extends State<ShowAdsByHomeScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    print(widget.item.album);
    return Scaffold(
      appBar: AppBar(
        title: const TranslateText(
          styleText: StyleText.h4,
          fontWeight: FontWeight.w700,
          text: 'Ads',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  if (widget.item.isOffer != null)
                    Positioned(
                        child: Container(
                      width: context.width * 0.18,
                      height: context.height * 0.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                          HexColor("#4C0497"),
                          HexColor("#4C0497"),
                          HexColor("#4C0497"),
                          HexColor("#4C0497").withOpacity(0.5),
                        ]),
                      ),
                    )),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 16),
                    child: BannerAdsSharedWidget(
                        images: ['https://img.huffingtonpost.com/asset/63e54b2b2400006e006f69c7.png?ops=scalefit_720_noupscale'],
                        onPageChanged: (index) {},
                        height: 250),
                  ),
                  Positioned(
                      left: 21,
                      top: 16,
                      child: Container(
                        width: context.width * 0.11,
                        height: context.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                            HexColor("#4C0497"),
                            HexColor("#4C0497"),
                            HexColor("#4C0497"),
                            HexColor("#4C0497").withOpacity(0.5),
                          ]),
                        ),
                        child: const RotatedBox(
                          quarterTurns: 3,
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TranslateText(
                                styleText: StyleText.h4,
                                fontWeight: FontWeight.w700,
                                textAlign: TextAlign.center,
                                text: 'اعلان ممول',
                                colorText: Colors.white,
                              )),
                        ),
                      )),
                ],
              ),
              const Gap(
                25,
              ),
              TranslateText(
                styleText: StyleText.h5,
                fontWeight: FontWeight.w500,
                text: widget.item.title ?? ' ',
                colorText: HexColor("#200E32"),
              ),
              const Gap(
                10,
              ),
              TranslateText(
                styleText: StyleText.h5,
                maxLines: 4,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w400,
                text: widget.item.desc ?? ' ',
                colorText: HexColor("#707070"),
              ),
              const Gap(
                10,
              ),
              TranslateText(
                styleText: StyleText.h3,
                fontWeight: FontWeight.w700,
                text: '${widget.item.price.toString().price} JD',
                colorText: HexColor("#4C0497"),
              ),
              const Gap(
                20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgCustomImage(image: 'location'.toSvg, width: 20, height: 20),
                  const Gap(
                    5,
                  ),
                  TranslateText(
                    styleText: StyleText.h5,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.start,
                    text: widget.item.city ?? '',
                    colorText: HexColor("#200E32"),
                  ),
                ],
              ),
              const Gap(
                20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

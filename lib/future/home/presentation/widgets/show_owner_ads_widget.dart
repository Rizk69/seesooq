import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensooq/future/home/presentation/widgets/call_orchat_button_widget.dart';

import '../../../../core/utils/cache_network_image.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/widget/text_translate_manager.dart';
import '../cubit/show_advertisment_state.dart';

class ShowOwnerAdsWidget extends StatelessWidget {
  const ShowOwnerAdsWidget({super.key, required this.state});

  final ShowAdvertismentState state;
  // dynamic attributeData = state.advertisementModel?.data?.attributes?[index] ?? AttributesDataTypeModel();
  @override
  Widget build(BuildContext context) {
    var user = state.advertisementModel?.data?.user;
    var cubit = state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TranslateText(
          styleText: StyleText.h3,
          fontWeight: FontWeight.w500,
          textAlign: TextAlign.start,
          text: 'Owner Ads',
          colorText: HexColor("#200E32"),
        ),
        Gap(20),
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          horizontalTitleGap: 0,
          leading: CircleAvatar(
            radius: 35,
            child: CacheNetworkImageApp(
              urlImage: user?.image ?? '',
              fit: BoxFit.cover,
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TranslateText(
                styleText: StyleText.h4,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.start,
                text: user?.name ?? '',
                colorText: HexColor("#200E32"),
              ),
            ],
          ), // Adjust font size

          trailing: GestureDetector(
            onTap: () {
              if (cubit.advertisementModel?.data?.checkFollwing ?? false) {
                // cubit.add(FollowEvent.removeFollowers(user?.id ?? 0));
              } else {
                // cubit.add(FollowEvent.addFollow(user?.id ?? 0));
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 11),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF4C0497), width: 1),
                borderRadius: BorderRadius.circular(50),
                gradient:
                    (cubit.advertisementModel?.data?.checkFollwing ?? true)
                        ? const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF4C0497),
                              Color(0xFF4C0497),
                              Color(0xFF4C0497),
                              Colors.white,
                              Color(0xFF4C0497),
                            ],
                            stops: [
                              0.0,
                              0.0,
                              0.5,
                              1.5,
                              1
                            ], // Stops at 0%, 50%, and 100%
                          )
                        : const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Colors.white,
                            ],
                            stops: [
                              0.0,
                              0.0,
                            ], // Stops at 0%, 50%, and 100%
                          ),
              ),
              child: TranslateText(
                text: (cubit.advertisementModel?.data?.checkFollwing ?? true)
                    ? 'following'
                    : 'follow',
                styleText: StyleText.h5,
                colorText:
                    (cubit.advertisementModel?.data?.checkFollwing ?? false)
                        ? Colors.white
                        : const Color(0xFF4C0497),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  itemsRow(title:cubit.advertisementModel?.data?.offerStartDatetime ??'' , icon: Icons.date_range),
                  itemsRow(title:cubit.advertisementModel?.data?.createdAt ??'' , icon: Icons.access_time_rounded),
                ],
              ),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  itemsRow(title:cubit.advertisementModel?.data?.offerStartDatetime ??'' , icon: Icons.call),
                  itemsRow(title:cubit.advertisementModel?.data?.createdAt ??'' , icon: Icons.remove_red_eye_outlined),
                ],
              ),
            ],
          ),
        ),


        Gap(20),
        CallOrChatButtonOwnerAdsSectionWidget(state: state)
      ],
    );
  }
  Widget itemsRow({required String title,required ,required IconData icon}){
    return Row(
      children: [
        Icon(icon,color: HexColor('#4C0497'),),
        SizedBox(width: 10,),
        TranslateText(
          styleText: StyleText.h5,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.start,
          text: title,
          colorText: HexColor("#707070"),
        ),
      ],
    );
  }
}

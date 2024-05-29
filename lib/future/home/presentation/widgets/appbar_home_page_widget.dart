import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';

class AppBarHomePageWidget extends StatefulWidget
    implements PreferredSizeWidget {
  const AppBarHomePageWidget(
      {super.key, required this.scaffoldKey, required this.isGust})
      : preferredSize = const Size.fromHeight(kToolbarHeight);
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  final Size preferredSize; // default is 56.0
  final bool isGust;

  @override
  AppBarHomePageWidgetState createState() => AppBarHomePageWidgetState();
}

class AppBarHomePageWidgetState extends State<AppBarHomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      leadingWidth: kToolbarHeight + 100,
      leading: Row(
        children: [
          ...List.generate(
              actions.length,
              (index) => Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            HexColor('#F5F5F5'),
                          ),
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )),
                        ),
                        padding: const EdgeInsets.all(10),
                        visualDensity: VisualDensity.compact,
                        onPressed: () {
                          if (!widget.isGust) {
                            switch (index) {

                              case 0:
                                widget.scaffoldKey.currentState!.openDrawer();
                              // case 1:
                              //   print('ssss');
                              case 1:
                                context.goNamed(Routes.notification);

                              default:
                            }
                          }else{
                            switch (index) {
                              case 0:
                                widget.scaffoldKey.currentState!.openDrawer();

                              default:
                            }
                          }
                        },
                        icon: SvgPicture.asset(
                          actions[index].toSvg,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  )).toList(),
        ],
      ),
    );

    // return AppBar(
    //   leadingWidth: kToolbarHeight + 20,
    //   centerTitle: false,
    //   toolbarHeight: kToolbarHeight + 70,
    //   surfaceTintColor: Colors.white,
    //   title: Column(
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           InkWell(
    //             onTap: () => context.goNamed('location'),
    //             child: Row(
    //               children: [
    //                 SvgPicture.asset('location'.toSvg),
    //                 const SizedBox(
    //                   width: 6,
    //                 ),
    //                 BlocBuilder<LocationCubit, LocationState>(
    //                   builder:(context, state) => TranslateText(
    //                     styleText: StyleText.h5,
    //                     text: state.locationName??'Location',
    //                   )
    //
    //                 )
    //               ],
    //             ),
    //           ),
    //           Row(
    //             children: [
    //               InkWell(
    //                 onTap: () => context.go(Routes.notification),
    //                 child: const Icon(
    //                   Icons.notifications_none_outlined,
    //                   size: 30,
    //                 ),
    //               )
    //             ],
    //           )
    //         ],
    //       ),
    //       const SizedBox(
    //         height: 10,
    //       ),
    //       SizedBox(
    //         height: 50,
    //         child: TextFormField(
    //           decoration: InputDecoration(
    //               border: const OutlineInputBorder(
    //                   borderSide: BorderSide(color: Colors.red)),
    //               enabledBorder: OutlineInputBorder(
    //                   borderSide: BorderSide(
    //                       color: Theme.of(context).primaryColor, width: 2)),
    //               hintText: 'Search by Ad Title or ID'),
    //           maxLines: 1,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}

List<String> actions = [
  'menu',
  // 'message',
  'notification'
];

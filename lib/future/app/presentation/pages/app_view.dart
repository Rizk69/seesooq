import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/alert_gust.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/home_state.dart';
import 'package:opensooq/future/home/presentation/cubit/story_user_cubit.dart';
import 'package:touchable/touchable.dart';

class AppWithNavBar extends StatefulWidget {
  const AppWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  State<AppWithNavBar> createState() => _AppWithNavBarState();
}

class _AppWithNavBarState extends State<AppWithNavBar> {
  bool isShow = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = HomeCubit.get(context);
            var gust = cubit.state.userLocalModel?.user?.name?.isEmpty ?? true;
            return Scaffold(
              body: Stack(
                children: [
                  widget.navigationShell,
                  Positioned(
                    bottom: 50,
                    left: 0,
                    right: 0,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 400),
                      opacity: isShow ? 1 : 0,
                      child: Visibility(
                        visible: isShow,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.25),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xff4C0497),
                                const Color(0xff4C0497).withOpacity(0.5)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: const Icon(Icons.camera_alt_rounded,
                                        color: Color(0xff4C0497), size: 25)),
                                onTap: () {
                                  if (!gust) {
                                    StoryUserCubit.get(context).pickImage();
                                  } else {
                                    showLoginOrGuestDialog(context);
                                  }
                                  isShow = false;
                                  setState(() {});
                                },
                              ),
                              InkWell(
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: const Icon(Icons.add_circle,
                                        color: Color(0xff4C0497), size: 25)),
                                onTap: () {
                                  if (!gust) {
                                    context.pushNamed(
                                      Routes.categoryProductPage,
                                    );
                                    isShow = false;
                                    setState(() {});
                                  } else {
                                    showLoginOrGuestDialog(context);
                                  }
                                },
                              ),
                              InkWell(
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: const Icon(
                                        Icons.my_library_books_rounded,
                                        color: Color(0xff4C0497),
                                        size: 25)),
                                onTap: () {
                                  if (!gust) {
                                    context.pushNamed(
                                      Routes.myAds,
                                    );
                                    isShow = false;
                                    setState(() {});
                                  } else {
                                    showLoginOrGuestDialog(context);
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: CustomPaint(
                  size: const Size.fromHeight(80),
                  painter: BNBCustomPainter(context: context),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    icon: SvgPicture.asset(
                                      'home_page'.toSvg,
                                      height: 30,
                                      color:
                                          widget.navigationShell.currentIndex ==
                                                  0
                                              ? null
                                              : Colors.grey,
                                    ),
                                    onPressed: () {
                                      if (!gust) {
                                        _onTap(context, 0);
                                      } else {
                                        showLoginOrGuestDialog(context);
                                      }
                                    },
                                  ),
                                  const TranslateText(
                                    text: 'home',
                                    styleText: StyleText.h5,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    icon: SvgPicture.asset(
                                      'reels_drawer'.toSvg,
                                      height: 30,
                                      color:
                                          widget.navigationShell.currentIndex ==
                                                  1
                                              ? null
                                              : Colors.grey,
                                    ),
                                    onPressed: () {
                                      if (!gust) {
                                        _onTap(context, 1);
                                      } else {
                                        showLoginOrGuestDialog(context);
                                      }
                                    },
                                  ),
                                  const TranslateText(
                                    text: 'reel',
                                    styleText: StyleText.h5,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  IconButton(
                                    icon: SvgPicture.asset(
                                      'wallet_drawer'.toSvg,
                                      height: 30,
                                      color:
                                          widget.navigationShell.currentIndex ==
                                                  2
                                              ? null
                                              : Colors.grey,
                                    ),
                                    onPressed: () {
                                      if (!gust) {
                                        _onTap(context, 2);
                                      } else {
                                        showLoginOrGuestDialog(context);
                                      }
                                    },
                                  ),
                                  const TranslateText(
                                    text: 'wallet_drawer',
                                    styleText: StyleText.h5,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    icon: SvgPicture.asset(
                                      'profile_icon'.toSvg,
                                      height: 30,
                                      color:
                                          widget.navigationShell.currentIndex ==
                                                  3
                                              ? Color(0xff4C0497)
                                              : Colors.grey,
                                    ),
                                    onPressed: () {
                                      if (!gust) {
                                        _onTap(context, 3);
                                      } else {
                                        showLoginOrGuestDialog(context);
                                      }
                                    },
                                  ),
                                  const TranslateText(
                                    text: 'profile',
                                    styleText: StyleText.h5,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              floatingActionButton: InkWell(
                onTap: () {
                  setState(() {
                    isShow = !isShow;
                  });
                },
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: AnimatedRotation(
                    duration: const Duration(milliseconds: 400),
                    turns: isShow ? 1 : 0,
                    curve: Curves.easeIn,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 120),
                      curve: Curves.easeIn,
                      width: isShow ? 50 : 60,
                      child: SvgPicture.asset(
                        'add_ads_icon_home'.toSvg,
                        fit: BoxFit.contain,
                        height: 90,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  /// Navigate to the current location of the branch at the provided index when
  /// tapping an item in the BottomNavigationBar.
  void _onTap(BuildContext context, int index) {
    // When navigating to a new branch, it's recommended to use the goBranch
    // method, as doing so makes sure the last navigation state of the
    // Navigator for the branch is restored.
    widget.navigationShell.goBranch(
      index,

      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}

bool hiddenNavbar(index, String path) {
  print(path);
  return index == 2
      ? true
      : path.contains('notification') ||
              path.contains(Routes.categoryView) ||
              path.contains(Routes.detailsCategoryView)
          ? true
          : path.contains('location')
              ? true
              : false;
}

class BNBCustomPainter extends CustomPainter {
  final BuildContext context;

  BNBCustomPainter({required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    var myCanvas = TouchyCanvas(context, canvas);

    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Start
    path.quadraticBezierTo(size.width * 0.25, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 10);
    path.arcToPoint(Offset(size.width * 0.60, 10),
        radius: const Radius.circular(45.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    // draw Circle on center
    canvas.drawCircle(
      Offset(size.width * 0.50, 0),
      35,
      paint,
    );

    // circle just click event
    // click event

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
//BottomNavigationBar(
//                             elevation: 0,
//                             backgroundColor: Colors.transparent,
//
//                             items: const [
//                               BottomNavigationBarItem(
//                                 icon: Icon(Icons.home),
//                                 label: 'الرئيسية',
//                               ),
//                               BottomNavigationBarItem(icon: Icon(Icons.search), label: 'البحث'),
//                               BottomNavigationBarItem(icon: Icon(Icons.add), label: 'أضف إعلان'),
//                               // BottomNavigationBarItem(icon: Icon(Icons.message), label: 'الرسائل'),
//                               BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حسابي'),
//                             ],
//                             onTap: (index) {
//                               // index0,4
//
//                               if (!gust || index == 0) {
//                                 _onTap(context, index);
//                               }
//                             },
//                             currentIndex: widget.navigationShell.currentIndex,
//                           );

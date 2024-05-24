import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/future/home/presentation/cubit/home_cubit.dart';
import 'package:opensooq/future/home/presentation/cubit/home_state.dart';

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
              body: widget.navigationShell,
              bottomNavigationBar: KeyboardVisibilityBuilder(builder: (context, visible) {
                return visible
                    ? const SizedBox.shrink()
                    : BottomNavigationBar(
                        elevation: 10,
                        items: const [
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: 'الرئيسية',
                          ),
                          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'البحث'),
                          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'أضف إعلان'),
                          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'الرسائل'),
                          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حسابي'),
                        ],
                        onTap: (index) {
                          // index0,4

                          if (!gust || index == 4 || index == 0) {
                            _onTap(context, index);
                          }
                        },
                        currentIndex: widget.navigationShell.currentIndex,
                      );
              }),
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
      : path.contains('notification') || path.contains(Routes.categoryView) || path.contains(Routes.detailsCategoryView)
          ? true
          : path.contains('location')
              ? true
              : false;
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Start
    path.quadraticBezierTo(size.width * 0.25, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 10);
    path.arcToPoint(Offset(size.width * 0.60, 10), radius: const Radius.circular(45.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

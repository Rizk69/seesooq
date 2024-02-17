import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/config/routes/app_routes.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class RootCategory extends StatelessWidget {
  const RootCategory({super.key, required this.child, required this.title});
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(getTitle(GoRouterState.of(context).fullPath.toString()),
                  style: TextStyle(
                    color: HexColor('#4C0497'),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              } else {
                context.goNamed(Routes.home);
              }
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 15, horizontal: 5)),
              visualDensity: VisualDensity.compact,
              backgroundColor: MaterialStateProperty.all<Color>(HexColor("#F5F5F5")),
            ),
            color: HexColor("#4C0497"),
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
          ),
        ),
        body: child);
  }
}

String getTitle(String path) {
  switch (path.split('/').last.trim()) {
    case 'categoryProductPage':
      return 'اختر القسم الرئيسي';
    case Routes.detailsCategoryPage:
      return 'اختر القسم الفرعي';
    case Routes.brandCategory:
      return 'اختر العلامة التجارية';

    default:
      return path.split('/').last;
  }
}

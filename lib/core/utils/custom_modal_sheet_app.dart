import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<void> customSheetApp(context, String routeName, List<Widget> list) async {
  showCustomModalBottomSheet(
    context: context,
    expand: true,
    containerWidget: (_, animation, child) => DraggableScrollableSheet(
      expand: true,
      initialChildSize: 0.5,
      snap: true,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      builder: (_, controller) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          controller: controller,
          child: child,
        ),
      ),
    ),
    enableDrag: true,
    bounce: true,
    closeProgressThreshold: 0.2,
    settings: RouteSettings(name: routeName),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    builder: (context) => StatefulBuilder(builder: (context, setState) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: list,
      );
    }),
  );
}

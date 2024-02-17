import 'package:flutter/material.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class AnimatedCheck extends StatefulWidget {
  final String img;
  const AnimatedCheck({super.key, required this.img});
  @override
  _AnimatedCheckState createState() => _AnimatedCheckState();
}

class _AnimatedCheckState extends State<AnimatedCheck> with TickerProviderStateMixin {
  late AnimationController scaleController = AnimationController(duration: const Duration(seconds: 2), vsync: this);
  late Animation<double> scaleAnimation = CurvedAnimation(parent: scaleController, curve: Curves.elasticOut);
  late AnimationController checkController = AnimationController(duration: const Duration(seconds: 1), vsync: this);
  late Animation<double> checkAnimation = CurvedAnimation(parent: checkController, curve: Curves.linear);

  @override
  void initState() {
    super.initState();
    scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        checkController.forward();
      }
    });
    scaleController.forward();
  }

  @override
  void dispose() {
    scaleController.dispose();
    checkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double circleSize = 130;
    double iconSize = 60;

    return ScaleTransition(
      scale: scaleAnimation,
      child: Container(
        height: circleSize,
        width: circleSize,
        decoration:
            BoxDecoration(color: Colors.white, shape: BoxShape.circle, border: Border.all(color: HexColor("#4C0497").withOpacity(0.2), width: 0.1)),
        child: SizeTransition(
            sizeFactor: checkAnimation,
            axis: Axis.horizontal,
            axisAlignment: -1,
            child: Center(
              child: Image.asset(
                widget.img,
              ),
            )),
      ),
    );
  }
}

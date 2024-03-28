import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgCustomImage extends StatelessWidget {
  const SvgCustomImage(
      {Key? key,
      required this.image,
      this.height = 100,
      this.width = 100,
      this.color})
      : super(key: key);
  final String image;
  final int width;
  final int height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image,
        width: width.toDouble(),
        height: height.toDouble(),
        clipBehavior: Clip.antiAlias,
        color: color ?? Theme.of(context).primaryColor);
  }
}

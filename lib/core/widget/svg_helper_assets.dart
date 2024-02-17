import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgHelper extends StatelessWidget {
  const SvgHelper({Key? key,required this.assetsName}) : super(key: key);
  final String assetsName;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetsName,height: 60,width: 60);
  }
}

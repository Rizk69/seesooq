import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.indent = 0, this.endIndent = 0, this.color = Colors.grey, this.thickness = 1});
  final double indent;
  final double endIndent;
  final Color color;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return  Divider(
      color: Colors.grey,
      height: 10,
      endIndent: endIndent,
      indent: indent,
      thickness: 1,);
  }
}

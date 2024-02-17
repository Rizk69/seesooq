import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opensooq/core/utils/media_query_values.dart';

class BaseAuthPage extends StatelessWidget {
  const BaseAuthPage({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: context.height * 0.1,
            child: SvgPicture.asset(
              'header_auth_page'.toSvg,
              fit: BoxFit.fill,
              width: context.width,
              height: context.height * 0.14,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

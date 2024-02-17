import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class TextFormFiledCustom extends StatelessWidget {
  String imgIconSvg;
  String hintText;
  int lines;
  TextFormFiledCustom({
    required this.hintText,
    required this.imgIconSvg,
    required this.lines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: lines,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        prefixIconConstraints: const BoxConstraints(maxWidth: 130),
        prefixIcon: lines == 5
            ? null
            : Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: SvgPicture.asset(
                  imgIconSvg,
                ),
              ),
        prefix: lines != 5
            ? null
            : Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: SvgPicture.asset(
                  imgIconSvg,
                ),
              ),
        hintText: hintText,
        hintStyle: TextStyle(color: HexColor('#4C0497')),
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14),
    );
  }
}

class ButtomsCustom extends StatelessWidget {
  String title;
  ButtomsCustom({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF4C0497), width: 1),
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4C0497),
              Color(0xFF4C0497),
              Color(0xFF4C0497),
              Colors.white,
              Colors.white,
            ],
            stops: [
              0.7,
              0.7,
              0,
              1,
              1,
            ],
          )),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opensooq/core/utils/hex_color.dart';

class TextFormFiledCustom extends StatefulWidget {
  final String imgIconSvg;
  final String hintText;
  final int lines;
  final TextEditingController controller;
  final bool? enabled;

  const TextFormFiledCustom({
    required this.hintText,
    this.enabled,
    required this.imgIconSvg,
    required this.lines,
    required this.controller,
    super.key,
  });

  @override
  State<TextFormFiledCustom> createState() => _TextFormFiledCustomState();
}

class _TextFormFiledCustomState extends State<TextFormFiledCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.lines,
      controller: widget.controller,
      enabled: widget.enabled,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        prefixIconConstraints: const BoxConstraints(maxWidth: 130),
        prefixIcon: widget.lines == 5
            ? null
            : Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: SvgPicture.asset(
                  widget.imgIconSvg,
                ),
              ),
        prefix: widget.lines != 5
            ? null
            : Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: SvgPicture.asset(
                  widget.imgIconSvg,
                ),
              ),
        hintText: widget.hintText.tr(),
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
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

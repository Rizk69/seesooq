import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opensooq/core/utils/hex_color.dart';
import 'package:opensooq/core/utils/media_query_values.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class TextFormFiledApp extends StatelessWidget {
  const TextFormFiledApp(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      this.maxLine,
      this.prefixIcon,
      this.error,
      this.validator,
      this.suffixIcon,
      this.obscureText,
      this.textInputAction,
      this.onTap,
      this.autoFocus,
      this.keyBoardType});

  final TextEditingController textEditingController;
  final String hintText;
  final int? maxLine;

  final bool? autoFocus;

  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final TextInputType? keyBoardType;
  final String? prefixIcon;
  final Widget? suffixIcon;
  final Widget? error;
  final bool? obscureText;
  final Function(String)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: textEditingController,
        onTap: onTap,
        autofocus: autoFocus ?? false,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        textAlign: TextAlign.start,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          hintText: hintText,

          prefixIcon: prefixIcon == null
              ? null
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: SvgPicture.asset(
                    "$prefixIcon".toSvg,
                  ),
                ),

          suffixIcon: suffixIcon,
          suffixIconConstraints: const BoxConstraints(maxHeight: 30, minWidth: 40, maxWidth: 40, minHeight: 30),
          // error: error,
          prefixIconConstraints: const BoxConstraints(maxHeight: 25, minWidth: 40, maxWidth: 40, minHeight: 25),
          hintStyle: TextStyle(
            color: Theme.of(context).textTheme.headlineMedium!.color,
          ),
          fillColor: Theme.of(context).colorScheme.background,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: HexColor('#707070').withOpacity(0.7),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.error,
            ),
          ),

          errorMaxLines: 4,
          errorText: error == null ? null : null,

          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 0,
            height: 0,
          ),
        ),
        cursorHeight: 20,
        maxLines: maxLine ?? 1,
        validator: (value) => value!.isEmpty ? 'Value is Empty' : null,
        enableIMEPersonalizedLearning: true,
        keyboardType: keyBoardType ?? TextInputType.text,
        textInputAction: textInputAction,
        smartDashesType: SmartDashesType.enabled,
        style: Theme.of(context).textTheme.headlineSmall);
  }
}

class CustomTextFormFiled extends StatefulWidget {
  const CustomTextFormFiled({
    super.key,
    required this.prefixIcon,
    required this.onChanged,
    this.textInputAction,
    this.textFormatters,
    this.textInputType,
    this.maxLine,
    required this.textEditingController,
  });

  final bool prefixIcon;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? textFormatters;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;
  final int? maxLine;
  final Function(String?) onChanged;

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      onChanged: widget.onChanged,
      textInputAction: widget.textInputAction,
      inputFormatters: widget.textFormatters,

      maxLines: widget.maxLine ?? 1,
      controller: widget.textEditingController,
      keyboardType: widget.textInputType ?? TextInputType.text,
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon
              ? Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TranslateText(
                        text: '+962',
                        styleText: StyleText.h5,
                        fontSize: 12,
                      ),
                      Container(
                        height: 15,
                        width: 1,
                        color: Colors.black,
                      )
                    ],
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(maxWidth: 45),
          isDense: true,
          contentPadding: const EdgeInsets.all(16)),
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14),

    );
  }
}

class CustomTextFormFiledApp extends StatelessWidget {
  const CustomTextFormFiledApp({super.key, required this.imgIconSvg, required this.title, required this.onChanged, this.onTap});

  final String imgIconSvg;
  final String title;

  final VoidCallback? onTap;

  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SvgPicture.asset(
            imgIconSvg,
          ),
        ),
        hintText: title,

        hintStyle: const TextStyle(fontSize: 18),
        prefixIconConstraints: const BoxConstraints(maxWidth: 45),
        isDense: true,
        contentPadding: const EdgeInsets.all(16),
        border: InputBorder.none, // Remove the default border
      ),
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14),
    );
  }
}

class CustomTextFormFiledPasswrd extends StatefulWidget {
  const CustomTextFormFiledPasswrd({
    Key? key,
    required this.imgIconSvg,
    required this.title,
  }) : super(key: key);

  final String imgIconSvg;
  final String title;

  @override
  _CustomTextFormFiledPasswrdState createState() => _CustomTextFormFiledPasswrdState();
}

class _CustomTextFormFiledPasswrdState extends State<CustomTextFormFiledPasswrd> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      obscureText: _obscureText,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        prefixIcon: InkWell(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: HexColor('4C0497'),
            ),
          ),
        ),
        suffixIcon: Padding(padding: const EdgeInsets.symmetric(horizontal: 12), child: SvgPicture.asset(widget.imgIconSvg)),
        hintTextDirection: TextDirection.rtl,
        hintText: widget.title,
        hintStyle: const TextStyle(fontSize: 18),
        prefixIconConstraints: const BoxConstraints(maxWidth: 45),
        isDense: true,
        contentPadding: const EdgeInsets.all(16),
        border: InputBorder.none, // Remove the default border
      ),
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14),
    );
  }
}

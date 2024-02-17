import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:opensooq/core/widget/text_translate_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final IconButton? iconButton;
  final bool? centerTitle;
  final Color? backgroundColor;

  const CustomAppBar(
      {super.key,
      required this.title,
      this.actions,
      this.iconButton,
      this.centerTitle,
      this.backgroundColor,
      this.automaticallyImplyLeading = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TranslateText(
        text: title,
        styleText: StyleText.h3,
        fontWeight: FontWeight.w600,
      ),
      surfaceTintColor: Colors.white,
      leading: iconButton ??
          BackButton(
            onPressed: () {
              context.pop();
            },
          ),
      centerTitle: centerTitle ?? true,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

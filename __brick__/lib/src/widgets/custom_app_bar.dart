import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final List<Widget>? actions;
  final double? height;
  final double? leadingWidth;
  final EdgeInsetsGeometry? actionsPadding;

  const CustomAppBar({
    super.key,
    this.actions,
    this.leading,
    this.leadingWidth,
    this.actionsPadding = const EdgeInsets.symmetric(
      horizontal: 25.0,
    ),
    this.height = 80.0,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: leadingWidth ,
      leading: leading,
      actionsPadding: actionsPadding,
      backgroundColor: Colors.transparent,
      toolbarHeight: height ?? 120,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
    height ?? 110.0,
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/colors/app_colors.dart';

class CustomScrollBar extends StatelessWidget {
  final Widget child;
  final ScrollController controller;

  const CustomScrollBar({
    super.key,
    required this.child,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final trackColor = AppColors.black;
    final thumbColor = AppColors.white;
    return RawScrollbar(
      trackColor: trackColor,
      thumbColor: thumbColor,
      trackVisibility: true,
      interactive: true,
      thickness: 10.0,
      thumbVisibility: true,
      radius: .circular(
        50.0,
      ),
      controller: controller,
      child: child,
    );
  }
}

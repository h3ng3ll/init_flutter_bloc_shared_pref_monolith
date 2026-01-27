
import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';

class BuildAvatarPlaceholder extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;
  final Color? borderColor;

  const BuildAvatarPlaceholder({
    super.key,
    this.child,
    this.padding,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: .circular(
          25.0,
        ),
        border: Border.all(
          width: 5.0,
          color: borderColor ?? AppColors.black,
        ),
      ),
      child:
      child ??
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // SvgPicture.asset(
                //   AppIcons.avatar,
                //   width: 60.0,
                //   height: 60.0,
                // ),

              ],
            ),
          ),
    );
  }
}

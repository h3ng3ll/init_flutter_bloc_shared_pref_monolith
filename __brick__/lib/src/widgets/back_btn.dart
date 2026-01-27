import 'package:flutter/material.dart';

import '../resources/colors/app_colors.dart';

class BackBtn extends StatelessWidget {
  final VoidCallback onTap;
  final double width;

  final double height;

  const BackBtn({
    super.key,
    required this.onTap,
    this.width = 44.0,
    this.height = 44.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.black,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 5.0, left: 0.0),
          child: Center(
            child: Icon(
              Icons.keyboard_arrow_left_sharp,
              size: 40.0,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../resources/colors/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool enabled;
  final double borderRadius;
  final VoidCallback onToggle;

  const CustomSwitch({
    super.key,
    required this.enabled,
    this.borderRadius = 17.5,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onToggle,
      child: Container(
        width: 73.0,
        height: 44.0,
        decoration: BoxDecoration(
          borderRadius: .circular(
            50.0,
          ),
          color: enabled
              ? AppColors.black
              : AppColors.white.withValues(
                  alpha: 0.8,
                ),
        ),
        child: AnimatedAlign(
          alignment: enabled ?  .topRight : .centerLeft,
          curve: Curves.easeInOut,
          duration: Duration(
            milliseconds: 400,
          ),
          child: Container(
            height: 44.0,
            width: 44.0,

            decoration: BoxDecoration(
              color: enabled
                  ? AppColors.black
                  : AppColors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../resources/colors/app_colors.dart';
import '../../resources/text/app_typography_theme.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomBtn({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTypographyTheme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: textTheme.r20.copyWith(
          color: AppColors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/app_icons.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/text/app_typography_theme.dart';

class CustomHeader extends StatelessWidget {
  final String month;
  final VoidCallback? onPickDate;
  final VoidCallback? onNextMonth;
  final VoidCallback? onPreviousMonth;

  const CustomHeader({
    super.key,
    required this.month,
    required this.onPickDate,
    required this.onNextMonth,
    required this.onPreviousMonth,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTypographyTheme.of(context);
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onPickDate,
            child: Row(
              spacing: 3.0,
              children: [
                Text(
                  month,
                  style: textTheme.b25.copyWith(
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onPreviousMonth,
              icon: SvgPicture.asset(
                AppIcons.arrowLeft,
              ),
            ),
            IconButton(
              onPressed: onNextMonth,
              icon: SvgPicture.asset(
                AppIcons.arrowRight,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

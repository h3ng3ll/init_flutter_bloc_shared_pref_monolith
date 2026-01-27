import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/text/app_typography_theme.dart';

class DayOutsideBuilder extends StatelessWidget {
  final DateTime day;
  final bool isCheckIn;
  final bool isPeriodDay;

  const DayOutsideBuilder({
    super.key,
    required this.day,
    required this.isCheckIn,
    required this.isPeriodDay,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTypographyTheme.of(context);

    return Center(
      child: Text(
        day.day.toString(),
        style: textTheme.r16.copyWith(
          color: AppColors.black.withValues(
            alpha: 0.4,
          ),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

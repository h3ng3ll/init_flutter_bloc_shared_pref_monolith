import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/text/app_typography_theme.dart';

class DaySelectedBuilder extends StatelessWidget {
  final DateTime day;
  final bool isCheckIn;
  final bool isPeriodDay;

  const DaySelectedBuilder({
    super.key,
    required this.day,
    required this.isCheckIn,
    required this.isPeriodDay,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTypographyTheme.of(context);

    return Center(
      child: Container(
        width: 40.0,
        height: 44.0,
        color: Colors.transparent,
        // boxShadow: [],
        // shape: BoxShape.circle,
        // padding: .all(
        //   5.0,
        // ),
        // border: .all(
        //   color: AppColors.heliotrope,
        // ),
        child: Stack(
          children: [
            Center(
              child: Text(
                day.day.toString(),
                style: textTheme.r16.copyWith(
                  color:
                       AppColors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

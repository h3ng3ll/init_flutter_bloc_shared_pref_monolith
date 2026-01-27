import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/localization/app_localizations.dart';
import '../../../resources/text/app_typography_theme.dart';

class BuildLoadingProgress extends StatefulWidget {
  final VoidCallback onCompleted;
  final double width;

  const BuildLoadingProgress({
    super.key,
    required this.onCompleted,
    this.width = 272.0,
  });

  @override
  State<BuildLoadingProgress> createState() => _BuildLoadingProgressState();
}

class _BuildLoadingProgressState extends State<BuildLoadingProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final BorderRadius radius = BorderRadius.circular(
    16.0,
  );

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(
            vsync: this,
            duration: Duration(
              seconds: 3,
            ),
          )
          ..addListener(
            () {
              if (_controller.isCompleted) {
                widget.onCompleted();
              }
              setState(() {});
            },
          )
          ..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lo = AppLocalizations.of(context)!;

    final textTheme = AppTypographyTheme.of(context);
    final textStyle = GoogleFonts.pattaya(
      textStyle: textTheme.m24,
    );
    return Column(
      children: [
        Text(
          '${lo.loading} ${(_controller.value * 100).round()}%',
          style: textStyle,
        ),
        Gap(15.0),
        Container(
          height: 54.0,
          width: widget.width,
          padding: EdgeInsets.all(
            3.0,
          ),
          decoration: BoxDecoration(
            color: AppColors.deepPersianRed,
            borderRadius: radius,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: widget.width * _controller.value,
              decoration: BoxDecoration(
                borderRadius: radius,
                color: AppColors.pastelLightLilac,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.inner,
                    offset: Offset(
                      3.0,
                      1.0,
                    ),
                    spreadRadius: 0,
                    blurRadius: 4.0,
                    color: AppColors.black.withValues(
                      alpha: 0.25,
                    ),
                  ),

                  BoxShadow(
                    offset: Offset(
                      -1.0,
                      0.0,
                    ),
                    blurRadius: 4.0,
                    color: AppColors.black.withValues(
                      alpha: 0.25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

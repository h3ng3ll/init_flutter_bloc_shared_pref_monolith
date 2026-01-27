import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/colors/app_colors.dart';
import '../../resources/text/app_typography_theme.dart';

class CustomBtn extends StatelessWidget {
  final String? text;
  final Widget? child;
  final VoidCallback onTap;
  final TextStyle? textStyle;
  final Color? color;
  final bool extended;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  const CustomBtn({
    super.key,
    this.text,
    required this.onTap,
    this.textStyle,
    this.color,
    this.extended = false,
    this.borderRadius,
    this.padding,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTypographyTheme.of(context);
    return SizedBox(
      width: extended ? double.infinity : null,
      child: GestureDetector(
        onTap: onTap,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.black,
            shape: RoundedRectangleBorder(
              borderRadius:
                  borderRadius ??
                  .circular(
                    12.0,
                  ),
            ),
            padding:
                padding ??
                .symmetric(
                  horizontal: 32.0,
                ),
          ),
          onPressed: onTap,
          child:
              child ??
              Text(
                text!,
                style:
                    textStyle ??
                    GoogleFonts.pattaya(
                      textStyle: textTheme.r24.copyWith(
                        color: AppColors.black,
                      ),
                    ),
              ),
        ),
      ),
    );
  }
}

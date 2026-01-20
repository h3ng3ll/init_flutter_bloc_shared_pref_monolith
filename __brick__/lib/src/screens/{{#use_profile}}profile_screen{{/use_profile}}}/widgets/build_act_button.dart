import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/text/app_typography_theme.dart';
import '../../../widgets/custom_widgets/custom_btn.dart';

class BuildActButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BuildActButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTypographyTheme.of(context);
    return CustomBtn(
      color: AppColors.black,
      extended: true,
      text: text,
      // padding: .symmetric(
      //   horizontal: 37.0,
      // ),
      textStyle: GoogleFonts.pattaya(
        textStyle: textTheme.r24.copyWith(
          color: AppColors.black,
        ),
      ),
      onTap: onTap,
    );
  }
}

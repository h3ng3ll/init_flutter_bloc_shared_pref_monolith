import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class AppGradients {
  static LinearGradient blackWhite = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.black.value,
      AppColors.white.value,
    ],
  );
}

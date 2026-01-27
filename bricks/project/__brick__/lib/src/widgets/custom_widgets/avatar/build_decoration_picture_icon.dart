import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';

class BuildDecorationPictureIcon extends StatelessWidget {
  const BuildDecorationPictureIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.0,
      height: 44.0,
      padding: .all(
        2.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.black,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.camera_alt,
        size: 30.0,
        color: AppColors.white,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../resources/colors/app_colors.dart';


class CustomAnimatedSmoothIndicator extends StatelessWidget {
  final int activeIndex;
  final int count;
  final Function(int index) onDotClicked;

  const CustomAnimatedSmoothIndicator({
    super.key,
    required this.activeIndex,
    required this.onDotClicked,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {

    return AnimatedSmoothIndicator(
      count: count,
      onDotClicked: onDotClicked,
      effect: WormEffect(
        dotColor: AppColors.white.value,
        activeDotColor: AppColors.black.value,
        dotWidth: 10.0,
        dotHeight: 10.0,
      ),
      activeIndex: activeIndex,
    );
  }
}

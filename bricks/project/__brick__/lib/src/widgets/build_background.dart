import 'package:flutter/material.dart';

import '../resources/colors/app_gradients.dart';

class BuildBackground extends StatelessWidget {
  final Widget child;

  const BuildBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(

      child: child,
     );
  }
}
